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
      identifier = { name = "hbb"; version = "0.4.0.2"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "contact@wolf-kissendorf.de";
      author = "Christian Wolf";
      homepage = "https://bitbucket.org/bhris/hbb";
      url = "";
      synopsis = "Haskell Busy Bee, a backend for text editors.";
      description = "This project forms the executable hbb which can be used\nas backend for text editors to provide them with a rich\nHaskell editing experience.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hbb" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."libhbb" or (errorHandler.buildDepError "libhbb"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."ghc-mod" or (errorHandler.buildDepError "ghc-mod"))
            ];
          buildable = true;
          };
        };
      };
    }