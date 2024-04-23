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
    flags = { build-examples = false; safe-foreign-calls = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "vulkan"; version = "3.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Joe Hermaszewski <live.long.and.prosper@monoid.al>";
      author = "";
      homepage = "https://github.com/expipiplus1/vulkan#readme";
      url = "";
      synopsis = "Bindings to the Vulkan graphics API.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
        ];
        libs = if system.isWindows
          then [ (pkgs."vulkan-1" or (errorHandler.sysDepError "vulkan-1")) ]
          else [ (pkgs."vulkan" or (errorHandler.sysDepError "vulkan")) ];
        buildable = true;
      };
      exes = {
        "info" = {
          depends = pkgs.lib.optionals (flags.build-examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
            (hsPkgs."vulkan" or (errorHandler.buildDepError "vulkan"))
          ];
          buildable = if flags.build-examples then true else false;
        };
        "sdl-triangle" = {
          depends = pkgs.lib.optionals (flags.build-examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."managed" or (errorHandler.buildDepError "managed"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."say" or (errorHandler.buildDepError "say"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vulkan" or (errorHandler.buildDepError "vulkan"))
          ];
          buildable = if flags.build-examples then true else false;
        };
      };
    };
  }