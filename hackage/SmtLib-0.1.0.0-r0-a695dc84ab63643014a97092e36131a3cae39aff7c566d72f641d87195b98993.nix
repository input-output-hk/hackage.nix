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
      identifier = { name = "SmtLib"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "rogerp62@outlook.com";
      author = "Roger";
      homepage = "https://github.com/MfesGA/HsmtlibParser";
      url = "";
      synopsis = "Library for parsing SMTLIB2";
      description = "SMTLib2 syntax and parsers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }