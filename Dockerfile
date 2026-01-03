FROM node:20-slim
WORKDIR /app
RUN npm install -g supergateway @modelcontextprotocol/server-github
ENV PORT=8080
ENV GITHUB_PERSONAL_ACCESS_TOKEN=""
EXPOSE 8080
CMD ["sh", "-c", "supergateway --stdio 'npx -y @modelcontextprotocol/server-github' --port $PORT"]
