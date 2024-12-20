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
      identifier = { name = "language-spir-v"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2023 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/language-spir-v#readme";
      url = "";
      synopsis = "Data type for SPIR-V";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/language-spir-v#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."c-enum" or (errorHandler.buildDepError "c-enum"))
          (hsPkgs."nowdoc" or (errorHandler.buildDepError "nowdoc"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        pkgconfig = [
          (pkgconfPkgs."shaderc" or (errorHandler.pkgConfDepError "shaderc"))
        ];
        buildable = true;
      };
      tests = {
        "language-spir-v-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."c-enum" or (errorHandler.buildDepError "c-enum"))
            (hsPkgs."language-spir-v" or (errorHandler.buildDepError "language-spir-v"))
            (hsPkgs."nowdoc" or (errorHandler.buildDepError "nowdoc"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
      };
    };
  }