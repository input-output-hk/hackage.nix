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
      identifier = { name = "feldspar-signal"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mararon@chalmers.se";
      author = "mararon";
      homepage = "https://github.com/markus-git/feldspar-signal";
      url = "";
      synopsis = "Signal Processing extension for Feldspar";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mainland-pretty" or (errorHandler.buildDepError "mainland-pretty"))
          (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
          (hsPkgs."imperative-edsl" or (errorHandler.buildDepError "imperative-edsl"))
          (hsPkgs."monadic-edsl-priv" or (errorHandler.buildDepError "monadic-edsl-priv"))
          (hsPkgs."feldspar-language" or (errorHandler.buildDepError "feldspar-language"))
          (hsPkgs."feldspar-compiler" or (errorHandler.buildDepError "feldspar-compiler"))
          (hsPkgs."feldspar-compiler-shim" or (errorHandler.buildDepError "feldspar-compiler-shim"))
        ];
        buildable = true;
      };
    };
  }