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
      identifier = { name = "Aurochs"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fnnirvana@gmail.com";
      author = "Xinyu Jiang";
      homepage = "";
      url = "";
      synopsis = "Yet another parser generator for C/C++";
      description = "A parser generator for Parsing Expression Grammars (PEGs)\nbased on the technique of packrat parsing.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Aurochs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
          buildable = true;
        };
      };
    };
  }