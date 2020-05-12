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
      identifier = { name = "resolve"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "GPL3";
      maintainer = "haskell@riaqn.org";
      author = "Zesen Qian";
      homepage = "https://github.com/riaqn/resolve#readme";
      url = "";
      synopsis = "A name resolusion library";
      description = "Please see README.org";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."attoparsec-binary" or (errorHandler.buildDepError "attoparsec-binary"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bv" or (errorHandler.buildDepError "bv"))
          (hsPkgs."hashmap" or (errorHandler.buildDepError "hashmap"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."stm-containers" or (errorHandler.buildDepError "stm-containers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          ];
        buildable = true;
        };
      };
    }