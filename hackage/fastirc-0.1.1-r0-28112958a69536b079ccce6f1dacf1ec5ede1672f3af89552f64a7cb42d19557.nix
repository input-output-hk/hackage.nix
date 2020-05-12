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
    flags = { debug = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "fastirc"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez";
      author = "Ertugrul Söylemez";
      homepage = "";
      url = "";
      synopsis = "Fast Internet Relay Chat (IRC) library";
      description = "Fast Internet Relay Chat (IRC) library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
          ];
        buildable = true;
        };
      exes = {
        "test" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = if flags.debug then true else false;
          };
        };
      };
    }