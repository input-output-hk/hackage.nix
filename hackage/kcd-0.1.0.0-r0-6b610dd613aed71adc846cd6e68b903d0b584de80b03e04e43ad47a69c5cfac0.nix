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
      identifier = { name = "kcd"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "buesing.marcel@googlemail.com";
      author = "marcelbuesing";
      homepage = "https://github.com/marcelbuesing/kcd";
      url = "";
      synopsis = "Kayak .kcd parsing library.";
      description = "Parse Kayak .kcd files.\nKcd files list CAN messages details, their signal's and signal details,\ne.g. the signal offset in the CAN data frame or the signal type.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-parse" or (errorHandler.buildDepError "conduit-parse"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."kcd-parser" or (errorHandler.buildDepError "kcd-parser"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }