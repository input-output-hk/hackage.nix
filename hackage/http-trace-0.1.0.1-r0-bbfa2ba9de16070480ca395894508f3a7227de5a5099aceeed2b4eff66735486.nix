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
      identifier = { name = "http-trace"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "Copyright: (c) 2016 Sergey Bushnyak";
      maintainer = "sergey.bushnyak@sigrlami.eu";
      author = "Sergey Bushnyak";
      homepage = "https://github.com/sigrlami/http-trace#readme";
      url = "";
      synopsis = "Tracking http redirects ";
      description = "Tracking http redirects for supplied url";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
          (hsPkgs."pcre-heavy" or (errorHandler.buildDepError "pcre-heavy"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          ];
        buildable = true;
        };
      exes = {
        "http-trace" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."http-trace" or (errorHandler.buildDepError "http-trace"))
            ];
          buildable = true;
          };
        };
      };
    }