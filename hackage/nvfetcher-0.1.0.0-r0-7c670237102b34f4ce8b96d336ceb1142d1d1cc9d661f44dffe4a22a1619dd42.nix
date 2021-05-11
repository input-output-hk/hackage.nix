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
      identifier = { name = "nvfetcher"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2021 berberman";
      maintainer = "berberman <berberman.yandex.com>";
      author = "berberman";
      homepage = "https://github.com/berberman/nvfetcher";
      url = "";
      synopsis = "Generate nix sources expr for the latest version of packages";
      description = "Please see README";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
          (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      exes = {
        "nvfetcher" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
            (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."nvfetcher" or (errorHandler.buildDepError "nvfetcher"))
            (hsPkgs."tomland" or (errorHandler.buildDepError "tomland"))
            (hsPkgs."validation-selective" or (errorHandler.buildDepError "validation-selective"))
            ];
          buildable = true;
          };
        "example" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
            (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."nvfetcher" or (errorHandler.buildDepError "nvfetcher"))
            ];
          buildable = if !flags.build-example then false else true;
          };
        };
      };
    }