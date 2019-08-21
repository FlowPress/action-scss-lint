FROM node:lts-alpine

# LABEL version="1.0.0"
# LABEL repository="https://github.com/flowpress/actions-scss-lint"
# LABEL homepage="https://github.com/flowpress/actions-scss-lint"
# LABEL maintainer="flowpress Actions <tech@flowpress.com>"

# LABEL com.github.actions.name="GitHub Action to execute scss linting"
# LABEL com.github.actions.description="Executes scss linting againts a specific directory."
# LABEL com.github.actions.icon="truck"
# LABEL com.github.actions.color="purple"
# COPY LICENSE README.md THIRD_PARTY_NOTICE.md /

COPY "entrypoint.sh" "/entrypoint.sh"
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
CMD ["default"]