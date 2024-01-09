FROM node:alpine

LABEL com.github.actions.name="Dependabot Auto Merge" \
      com.github.actions.description="Automatically merge Dependabot PRs when version comparison is within range" \
      com.github.actions.icon="git-merge" \
      com.github.actions.color="blue" \
      maintainer="Michael Buluma <bulumaknight@gmail.com>"

RUN mkdir /action
WORKDIR /action

COPY action ./

RUN npm ci --omit=dev

ENTRYPOINT ["node", "/action/index.js"]
