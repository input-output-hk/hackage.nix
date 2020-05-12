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
      identifier = { name = "Fungi"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "thomasedingcode@gmail.com";
      author = "Thomas Eding";
      homepage = "";
      url = "";
      synopsis = "An interpreter for Funge-98 programming languages, including Befunge.";
      description = "Fungi is a standards compliant Funge-98 interpreter equipped with an integrated debugger.\nSupports funges of arbitrary dimensions, including Unefunge, Befunge, and Trefunge.\nAllows limited control of funge cell size.\nSeveral fingerprints are implemented.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "fungi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ListZipper" or (errorHandler.buildDepError "ListZipper"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }