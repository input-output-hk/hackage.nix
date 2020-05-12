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
      identifier = { name = "hserv"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "mail@rejuvyesh.com";
      author = "rejuvyesh";
      homepage = "http://github.com/rejuvyesh/hserv";
      url = "";
      synopsis = "Simple http server in haskell.";
      description = "Simple http server in haskell, similar to as provided by `python -m SimpleHTTPServer`.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hserv" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wai-app-static" or (errorHandler.buildDepError "wai-app-static"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        };
      };
    }