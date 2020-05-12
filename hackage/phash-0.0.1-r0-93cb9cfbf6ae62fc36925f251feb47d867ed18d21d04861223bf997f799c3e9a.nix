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
      identifier = { name = "phash"; version = "0.0.1"; };
      license = "MIT";
      copyright = "Copyright: (c) 2014 Michael Xavier";
      maintainer = "Michael Xavier <michael@michaelxavier.net>";
      author = "Michael Xavier <michael@michaelxavier.net>";
      homepage = "http://github.com/michaelxavier/phash";
      url = "";
      synopsis = "Haskell bindings to pHash, the open source perceptual hash library";
      description = "See http://www.phash.org/ for more info. Note that you\nmust have libphash installed on your system to use this\nlibrary. Check your system library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."pHash" or (errorHandler.sysDepError "pHash")) ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            ];
          libs = [
            (pkgs."pthread" or (errorHandler.sysDepError "pthread"))
            (pkgs."pHash" or (errorHandler.sysDepError "pHash"))
            ];
          buildable = true;
          };
        };
      };
    }