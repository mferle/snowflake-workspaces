-- ------------------------------------
-- Set up API integration for all users
-- ------------------------------------
USE ROLE ACCOUNTADMIN;
CREATE OR REPLACE API INTEGRATION WS_DEMO_GIT_INTEGRATION
  API_PROVIDER = git_https_api
  API_ALLOWED_PREFIXES = ('https://github.com/mferle')
  API_USER_AUTHENTICATION = (TYPE = SNOWFLAKE_GITHUB_APP)
  ENABLED = TRUE;

-- grant usage on the API integration to all users
GRANT USAGE ON INTEGRATION WS_DEMO_GIT_INTEGRATION TO ROLE PUBLIC;
