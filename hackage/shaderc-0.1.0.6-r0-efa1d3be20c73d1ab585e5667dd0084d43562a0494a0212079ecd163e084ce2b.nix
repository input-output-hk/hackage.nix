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
      identifier = { name = "shaderc"; version = "0.1.0.6"; };
      license = "BSD-3-Clause";
      copyright = "2022 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/shaderc#readme";
      url = "";
      synopsis = "A collection of tools and libraries for Vulkan shader compilation";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/shaderc#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."c-enum" or (errorHandler.buildDepError "c-enum"))
          (hsPkgs."c-struct" or (errorHandler.buildDepError "c-struct"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."exception-hierarchy" or (errorHandler.buildDepError "exception-hierarchy"))
          (hsPkgs."language-spir-v" or (errorHandler.buildDepError "language-spir-v"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."nowdoc" or (errorHandler.buildDepError "nowdoc"))
          (hsPkgs."storable-peek-poke" or (errorHandler.buildDepError "storable-peek-poke"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        pkgconfig = [
          (pkgconfPkgs."shaderc" or (errorHandler.pkgConfDepError "shaderc"))
        ];
        buildable = true;
      };
      tests = {
        "shaderc-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."c-enum" or (errorHandler.buildDepError "c-enum"))
            (hsPkgs."c-struct" or (errorHandler.buildDepError "c-struct"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."exception-hierarchy" or (errorHandler.buildDepError "exception-hierarchy"))
            (hsPkgs."language-spir-v" or (errorHandler.buildDepError "language-spir-v"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."nowdoc" or (errorHandler.buildDepError "nowdoc"))
            (hsPkgs."shaderc" or (errorHandler.buildDepError "shaderc"))
            (hsPkgs."storable-peek-poke" or (errorHandler.buildDepError "storable-peek-poke"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
      };
    };
  }