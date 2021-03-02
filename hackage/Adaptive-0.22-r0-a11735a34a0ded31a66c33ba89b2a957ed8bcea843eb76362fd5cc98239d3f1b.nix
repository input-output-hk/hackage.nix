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
      specVersion = "1.0";
      identifier = { name = "Adaptive"; version = "0.22"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Magnus Carlsson <magnus@galois.com>";
      author = "Magnus Carlsson";
      homepage = "";
      url = "";
      synopsis = "Library for incremental computing.";
      description = "This is a Haskell (plus some extensions) implementation\nof a library for incremental computing.  It closely\nfollows the implementation in the nice POPL 2002 paper\n\"Adaptive Functional Programming\", by Umut Acar,\nGuy Blelloch and Bob Harper.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          ];
        buildable = true;
        };
      exes = {
        "spreadsheet" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            ];
          buildable = true;
          };
        };
      };
    }