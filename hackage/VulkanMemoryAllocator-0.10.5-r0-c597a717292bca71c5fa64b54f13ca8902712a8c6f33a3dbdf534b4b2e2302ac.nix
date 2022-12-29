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
      vma-ndebug = false;
      vma-recording = false;
      };
    package = {
      specVersion = "2.2";
      identifier = { name = "VulkanMemoryAllocator"; version = "0.10.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ellie Hermaszewska <live.long.and.prosper@monoid.al>";
      author = "";
      homepage = "https://github.com/expipiplus1/vulkan#readme";
      url = "";
      synopsis = "Bindings to the VulkanMemoryAllocator library";
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
          (hsPkgs."vulkan" or (errorHandler.buildDepError "vulkan"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "9.4") (hsPkgs."system-cxx-std-lib" or (errorHandler.buildDepError "system-cxx-std-lib"));
        libs = (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "9.4")) ((((pkgs.lib).optional (system.isLinux) (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ++ (pkgs.lib).optional (system.isOsx || system.isFreebsd) (pkgs."c++" or (errorHandler.sysDepError "c++"))) ++ (pkgs.lib).optionals (system.isOpenbsd) [
          (pkgs."c++" or (errorHandler.sysDepError "c++"))
          (pkgs."c++abi" or (errorHandler.sysDepError "c++abi"))
          (pkgs."pthread" or (errorHandler.sysDepError "pthread"))
          ]) ++ (pkgs.lib).optionals (system.isWindows) (if compiler.isGhc && (compiler.version).lt "9.3"
          then [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ]
          else [
            (pkgs."c++" or (errorHandler.sysDepError "c++"))
            (pkgs."c++abi" or (errorHandler.sysDepError "c++abi"))
            ]));
        buildable = true;
        };
      };
    }