# 1. Use official Node image
FROM node:18

# 2. Create app directory inside container
WORKDIR /app

# 3. Copy only package files first
COPY package*.json ./

# 4. Install dependencies
RUN npm install

# 5. Copy project files
COPY . .

# 6. Expose port
EXPOSE 3000

# 7. Start the app
CMD ["npm", "start"]
