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
      specVersion = "1.12";
      identifier = { name = "altsvc"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019-2025 Olivier Chéron";
      maintainer = "olivier.cheron@gmail.com";
      author = "Olivier Chéron";
      homepage = "https://codeberg.org/ocheron/hs-altsvc#readme";
      url = "";
      synopsis = "HTTP Alternative Services";
      description = "Haskell code to parse and generate the @Alt-Svc@ HTTP header field.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
        ];
        buildable = true;
      };
      tests = {
        "altsvc-test" = {
          depends = [
            (hsPkgs."altsvc" or (errorHandler.buildDepError "altsvc"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }