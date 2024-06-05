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
      specVersion = "2.0";
      identifier = { name = "char-boxdrawing"; version = "1"; };
      license = "BSD-3-Clause";
      copyright = "2024";
      maintainer = "mike@quasimal.com";
      author = "Mike Ledger";
      homepage = "";
      url = "";
      synopsis = "Combinators for unicode or ASCII box drawing characters";
      description = "Draw and intersect border characters for text-based drawings";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }