# ---------- Stage 1: Build the React app ----------
FROM node:18-alpine AS builder

# Set the working directory inside the container
WORKDIR /app

# Copy package files
COPY package*.json ./

# Remove any repo/dir package-lock (we will generate a fresh one inside the container)
RUN rm -f package-lock.json

# Install dependencies (this will use package.json without node-sass)
RUN npm install

# Copy source
COPY . .

# Environment fixes to avoid preflight / openssl issues
ENV NODE_OPTIONS=--openssl-legacy-provider
ENV SKIP_PREFLIGHT_CHECK=true
ENV DISABLE_ESLINT_PLUGIN=true

# Build the app
RUN npm run build

# ---------- Stage 2: Serve with nginx ----------
FROM nginx:alpine

# Set the working directory
WORKDIR /app

# Copy the built React app from the builder stage
COPY --from=builder /app/build /usr/share/nginx/html

# Expose Application port
EXPOSE 80

# Run the application
CMD ["nginx", "-g", "daemon off;"]
