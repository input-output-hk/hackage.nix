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
    flags = { build-example = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "nvfetcher"; version = "0.6.2.0"; };
      license = "MIT";
      copyright = "2021-2023 berberman";
      maintainer = "berberman <berberman.yandex.com>";
      author = "berberman";
      homepage = "https://github.com/berberman/nvfetcher";
      url = "";
      synopsis = "Generate nix sources expr for the latest version of packages";
      description = "Please see [README](https://github.com/berberman/nvfetcher/blob/master/README.md)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."binary-instances" or (errorHandler.buildDepError "binary-instances"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
          (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
          (hsPkgs."optparse-simple" or (errorHandler.buildDepError "optparse-simple"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."toml-reader" or (errorHandler.buildDepError "toml-reader"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      exes = {
        "nvfetcher" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."binary-instances" or (errorHandler.buildDepError "binary-instances"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
            (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
            (hsPkgs."optparse-simple" or (errorHandler.buildDepError "optparse-simple"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."toml-reader" or (errorHandler.buildDepError "toml-reader"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."nvfetcher" or (errorHandler.buildDepError "nvfetcher"))
            (hsPkgs."validation-selective" or (errorHandler.buildDepError "validation-selective"))
            ];
          buildable = true;
          };
        "example" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."binary-instances" or (errorHandler.buildDepError "binary-instances"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
            (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
            (hsPkgs."optparse-simple" or (errorHandler.buildDepError "optparse-simple"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."toml-reader" or (errorHandler.buildDepError "toml-reader"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."nvfetcher" or (errorHandler.buildDepError "nvfetcher"))
            ];
          buildable = if !flags.build-example then false else true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."binary-instances" or (errorHandler.buildDepError "binary-instances"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
            (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
            (hsPkgs."optparse-simple" or (errorHandler.buildDepError "optparse-simple"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."toml-reader" or (errorHandler.buildDepError "toml-reader"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."nvfetcher" or (errorHandler.buildDepError "nvfetcher"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }