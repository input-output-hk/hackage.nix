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
      identifier = { name = "has-th"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Chris Done 2010";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "http://github.com/chrisdone/has-th";
      url = "";
      synopsis = "Template Haskell function for Has records.";
      description = "Template Haskell function for definining Has records.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."has" or (errorHandler.buildDepError "has"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }