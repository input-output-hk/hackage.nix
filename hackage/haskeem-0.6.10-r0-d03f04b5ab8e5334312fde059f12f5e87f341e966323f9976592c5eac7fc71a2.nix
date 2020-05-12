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
      specVersion = "1.2";
      identifier = { name = "haskeem"; version = "0.6.10"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Uwe Hollerbach <uh@alumni.caltech.edu>";
      author = "Uwe Hollerbach <uh@alumni.caltech.edu>";
      homepage = "";
      url = "";
      synopsis = "A small scheme interpreter";
      description = "This is a moderately complete small scheme interpreter.\nIt implements most of R6RS, with the exception of call/cc\nand a macro system. It is also not necessarily fully\ntail-recursive; so it's not industrial-strength. For\nplaying with or learning scheme, it should be pretty good.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haskeem" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            ];
          buildable = true;
          };
        };
      };
    }