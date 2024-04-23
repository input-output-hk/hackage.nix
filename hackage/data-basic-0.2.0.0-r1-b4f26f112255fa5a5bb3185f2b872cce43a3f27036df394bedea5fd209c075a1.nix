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
      identifier = { name = "data-basic"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "nikola@henezi.com, luka.horvat9@gmail.com";
      author = "Nikola Henezi, Luka Horvat";
      homepage = "https://gitlab.com/haskell-hr/basic";
      url = "";
      synopsis = "A database library with a focus on ease of use, type safety and useful error messages";
      description = "Please see README.md at https://gitlab.com/haskell-hr/basic";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."simple-effects" or (errorHandler.buildDepError "simple-effects"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."hssqlppp" or (errorHandler.buildDepError "hssqlppp"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."cases" or (errorHandler.buildDepError "cases"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."overload" or (errorHandler.buildDepError "overload"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."string-conv" or (errorHandler.buildDepError "string-conv"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      tests = {
        "basic-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."basic" or (errorHandler.buildDepError "basic"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
          buildable = true;
        };
      };
    };
  }