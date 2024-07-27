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
    flags = {
      generic-instances = false;
      safe-foreign-calls = false;
      trace-calls = false;
    };
    package = {
      specVersion = "2.2";
      identifier = { name = "vulkan"; version = "3.23.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ellie Hermaszewska <live.long.and.prosper@monoid.al>";
      author = "";
      homepage = "https://github.com/expipiplus1/vulkan#readme";
      url = "";
      synopsis = "Bindings to the Vulkan graphics API.";
      description = "Please see [the readme](https://github.com/expipiplus1/vulkan/#readme)";
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
        libs = pkgs.lib.optional (system.isWindows) (pkgs."vulkan-1" or (errorHandler.sysDepError "vulkan-1")) ++ pkgs.lib.optional (system.isOsx) (pkgs."vulkan" or (errorHandler.sysDepError "vulkan"));
        pkgconfig = pkgs.lib.optional (!system.isWindows && !system.isOsx) (pkgconfPkgs."vulkan" or (errorHandler.pkgConfDepError "vulkan"));
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."vulkan" or (errorHandler.buildDepError "vulkan"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.tasty-discover.components.exes.tasty-discover or (pkgs.pkgsBuildBuild.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
          ];
          buildable = true;
        };
      };
    };
  }