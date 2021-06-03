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
      identifier = { name = "discord-register"; version = "0.0.2"; };
      license = "MPL-2.0";
      copyright = "2020 Hugh Sipiere";
      maintainer = "Hugh Sipiere";
      author = "Hugh Sipiere";
      homepage = "https://github.com/hgsipiere/discord-register#readme";
      url = "";
      synopsis = "Discord verification bot";
      description = "This bot can send new server members a message on entry, ask for their name and an attachment.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."calamity" or (errorHandler.buildDepError "calamity"))
          (hsPkgs."calamity-commands" or (errorHandler.buildDepError "calamity-commands"))
          (hsPkgs."data-flags" or (errorHandler.buildDepError "data-flags"))
          (hsPkgs."di" or (errorHandler.buildDepError "di"))
          (hsPkgs."di-polysemy" or (errorHandler.buildDepError "di-polysemy"))
          (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
          (hsPkgs."unboxing-vector" or (errorHandler.buildDepError "unboxing-vector"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      exes = {
        "discord-register-exe" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."calamity" or (errorHandler.buildDepError "calamity"))
            (hsPkgs."calamity-commands" or (errorHandler.buildDepError "calamity-commands"))
            (hsPkgs."data-flags" or (errorHandler.buildDepError "data-flags"))
            (hsPkgs."di" or (errorHandler.buildDepError "di"))
            (hsPkgs."di-polysemy" or (errorHandler.buildDepError "di-polysemy"))
            (hsPkgs."discord-register" or (errorHandler.buildDepError "discord-register"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
            (hsPkgs."unboxing-vector" or (errorHandler.buildDepError "unboxing-vector"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }