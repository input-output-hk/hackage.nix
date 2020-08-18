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
    flags = { generic-instances = false; safe-foreign-calls = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "vulkan"; version = "3.6.5"; };
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
          ];
        libs = if system.isWindows
          then [ (pkgs."vulkan-1" or (errorHandler.sysDepError "vulkan-1")) ]
          else [ (pkgs."vulkan" or (errorHandler.sysDepError "vulkan")) ];
        buildable = true;
        };
      };
    }