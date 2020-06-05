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
      identifier = { name = "tdlib-gen"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2020 Poscat";
      maintainer = "poscat@mail.poscat.moe";
      author = "Poscat";
      homepage = "https://github.com/poscat0x04/tdlib-gen#readme";
      url = "";
      synopsis = "Codegen for TDLib";
      description = "Please see the README on GitHub at <https://github.com/poscat0x04/tdlib-gen#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring-type" or (errorHandler.buildDepError "base64-bytestring-type"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
          (hsPkgs."language-tl" or (errorHandler.buildDepError "language-tl"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "tdlib-gen" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base64-bytestring-type" or (errorHandler.buildDepError "base64-bytestring-type"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."language-tl" or (errorHandler.buildDepError "language-tl"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."tdlib-gen" or (errorHandler.buildDepError "tdlib-gen"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tdlib-gen-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base64-bytestring-type" or (errorHandler.buildDepError "base64-bytestring-type"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."language-tl" or (errorHandler.buildDepError "language-tl"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."tdlib-gen" or (errorHandler.buildDepError "tdlib-gen"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }