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
      identifier = { name = "flashblast"; version = "0.0.9.0"; };
      license = "MIT";
      copyright = "2020 Daniel Firth";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Generate language learning flashcards from video.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."co-log-polysemy" or (errorHandler.buildDepError "co-log-polysemy"))
          (hsPkgs."co-log-polysemy-formatting" or (errorHandler.buildDepError "co-log-polysemy-formatting"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."composite-base" or (errorHandler.buildDepError "composite-base"))
          (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
          (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
          (hsPkgs."generic-monoid" or (errorHandler.buildDepError "generic-monoid"))
          (hsPkgs."ghc-clippy-plugin" or (errorHandler.buildDepError "ghc-clippy-plugin"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
          (hsPkgs."optics-extra" or (errorHandler.buildDepError "optics-extra"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."path-dhall-instance" or (errorHandler.buildDepError "path-dhall-instance"))
          (hsPkgs."path-utils" or (errorHandler.buildDepError "path-utils"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          (hsPkgs."polysemy-extra" or (errorHandler.buildDepError "polysemy-extra"))
          (hsPkgs."polysemy-fs" or (errorHandler.buildDepError "polysemy-fs"))
          (hsPkgs."polysemy-fskvstore" or (errorHandler.buildDepError "polysemy-fskvstore"))
          (hsPkgs."polysemy-http" or (errorHandler.buildDepError "polysemy-http"))
          (hsPkgs."polysemy-methodology" or (errorHandler.buildDepError "polysemy-methodology"))
          (hsPkgs."polysemy-methodology-composite" or (errorHandler.buildDepError "polysemy-methodology-composite"))
          (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
          (hsPkgs."polysemy-video" or (errorHandler.buildDepError "polysemy-video"))
          (hsPkgs."polysemy-vinyl" or (errorHandler.buildDepError "polysemy-vinyl"))
          (hsPkgs."polysemy-zoo" or (errorHandler.buildDepError "polysemy-zoo"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."replace-megaparsec" or (errorHandler.buildDepError "replace-megaparsec"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."semialign" or (errorHandler.buildDepError "semialign"))
          (hsPkgs."subtitleParser" or (errorHandler.buildDepError "subtitleParser"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."these" or (errorHandler.buildDepError "these"))
          (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
          (hsPkgs."unliftio-path" or (errorHandler.buildDepError "unliftio-path"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
          ];
        buildable = true;
        };
      exes = {
        "flashblast" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."co-log-polysemy" or (errorHandler.buildDepError "co-log-polysemy"))
            (hsPkgs."co-log-polysemy-formatting" or (errorHandler.buildDepError "co-log-polysemy-formatting"))
            (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
            (hsPkgs."composite-base" or (errorHandler.buildDepError "composite-base"))
            (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
            (hsPkgs."flashblast" or (errorHandler.buildDepError "flashblast"))
            (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
            (hsPkgs."generic-monoid" or (errorHandler.buildDepError "generic-monoid"))
            (hsPkgs."ghc-clippy-plugin" or (errorHandler.buildDepError "ghc-clippy-plugin"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
            (hsPkgs."optics-extra" or (errorHandler.buildDepError "optics-extra"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."path-dhall-instance" or (errorHandler.buildDepError "path-dhall-instance"))
            (hsPkgs."path-utils" or (errorHandler.buildDepError "path-utils"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."polysemy-extra" or (errorHandler.buildDepError "polysemy-extra"))
            (hsPkgs."polysemy-fs" or (errorHandler.buildDepError "polysemy-fs"))
            (hsPkgs."polysemy-fskvstore" or (errorHandler.buildDepError "polysemy-fskvstore"))
            (hsPkgs."polysemy-http" or (errorHandler.buildDepError "polysemy-http"))
            (hsPkgs."polysemy-methodology" or (errorHandler.buildDepError "polysemy-methodology"))
            (hsPkgs."polysemy-methodology-composite" or (errorHandler.buildDepError "polysemy-methodology-composite"))
            (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
            (hsPkgs."polysemy-video" or (errorHandler.buildDepError "polysemy-video"))
            (hsPkgs."polysemy-vinyl" or (errorHandler.buildDepError "polysemy-vinyl"))
            (hsPkgs."polysemy-zoo" or (errorHandler.buildDepError "polysemy-zoo"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."replace-megaparsec" or (errorHandler.buildDepError "replace-megaparsec"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."semialign" or (errorHandler.buildDepError "semialign"))
            (hsPkgs."subtitleParser" or (errorHandler.buildDepError "subtitleParser"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."these" or (errorHandler.buildDepError "these"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            (hsPkgs."unliftio-path" or (errorHandler.buildDepError "unliftio-path"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
            ];
          buildable = true;
          };
        };
      };
    }