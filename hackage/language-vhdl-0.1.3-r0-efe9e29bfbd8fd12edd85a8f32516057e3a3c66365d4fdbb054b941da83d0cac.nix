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
      identifier = { name = "language-vhdl"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mararon@chalmers.se";
      author = "Markus Aronsson <mararon@chalmers.se>";
      homepage = "https://github.com/markus-git/language-vhdl";
      url = "";
      synopsis = "VHDL AST and pretty printer in Haskell.";
      description = "VHDL AST and pretty printer according to the VHDL language reference manual (2000 Edition).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
        ];
        buildable = true;
      };
    };
  }