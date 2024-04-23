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
      identifier = { name = "yices"; version = "0.0.0.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ki Yung Ahn <kya@pdx.edu>";
      author = "Ki Yung Ahn <kya@pdx.edu>";
      homepage = "";
      url = "";
      synopsis = "Haskell programming interface to Yices SMT solver";
      description = "Incomplete (no bitvectors) syntax, parser, and inter\nprocess communication to Yices from Haskell through pipe.\nPurpose for building and using this library was to generate\ntest cases from constraints that SMT solvers can solve.  I\nonly used it for that particular purpose, so the code in\ngeneral is not yet fully tested.  Use at your own risk and\nerror reports are welcomed. See <http://yices.csl.sri.com/>\nfor further information on Yices.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ];
        buildable = true;
      };
    };
  }