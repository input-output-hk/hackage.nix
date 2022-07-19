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
      specVersion = "1.12";
      identifier = { name = "simplex-method"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "BSD-3";
      maintainer = "jrasheed178@gmail.com";
      author = "Junaid Rasheed";
      homepage = "https://github.com/rasheedja/simplex-method#readme";
      url = "";
      synopsis = "Implementation of the two-phase simplex method in exact rational arithmetic";
      description = "Please see the README on GitHub at <https://github.com/rasheedja/simplex-method#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "simplex-haskell-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."simplex-method" or (errorHandler.buildDepError "simplex-method"))
            ];
          buildable = true;
          };
        };
      };
    }