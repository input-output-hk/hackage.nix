{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gym-http-api"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "dl3913@ic.ac.uk, sam@stites.io";
      author = "Daniel Lucsanszky, Sam Stites";
      homepage = "https://github.com/stites/gym-http-api#readme";
      url = "";
      synopsis = "REST client to the gym-http-api project";
      description = "This library provides a REST client to the gym open-source library. gym-http-api itself provides a <https://github.com/openai/gym-http-api/blob/master/gym_http_server.py python-based REST> server to the gym open-source library, allowing development in languages other than python.\n\nNote that the <https://github.com/openai/gym-http-api/ openai/gym-http-api> is a monorepo of all language-clients. This hackage library tracks <https://github.com/stites/gym-http-api/ stites/gym-http-api> which is the actively-maintained haskell fork.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
          (hsPkgs."servant-lucid" or (errorHandler.buildDepError "servant-lucid"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."gym-http-api" or (errorHandler.buildDepError "gym-http-api"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            ];
          buildable = true;
          };
        };
      };
    }