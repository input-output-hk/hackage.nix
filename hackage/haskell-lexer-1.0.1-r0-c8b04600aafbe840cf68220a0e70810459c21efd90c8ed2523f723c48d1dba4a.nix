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
      identifier = { name = "haskell-lexer"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diatchki@galois.com";
      author = "Thomas Hallgren";
      homepage = "";
      url = "";
      synopsis = "A fully compliant Haskell 98 lexer.";
      description = "A fully compliant Haskell 98 lexer.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }