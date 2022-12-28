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
      specVersion = "2.2";
      identifier = { name = "haskell-lexer"; version = "1.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "diatchki@galois.com";
      author = "Thomas Hallgren";
      homepage = "https://github.com/yav/haskell-lexer";
      url = "";
      synopsis = "A fully compliant Haskell 98 lexer";
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