FROM node:20

# Set production mode
ENV NODE_ENV=production

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json (if exists)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy rest of the files
COPY . .

# Expose the Render-assigned port
ENV PORT=10000
EXPOSE 10000

# Start the app
CMD ["node", "index.js"]