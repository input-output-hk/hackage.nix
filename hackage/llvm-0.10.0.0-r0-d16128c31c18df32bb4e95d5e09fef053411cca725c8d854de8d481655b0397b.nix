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
      specVersion = "1.10";
      identifier = { name = "llvm"; version = "0.10.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>, Lennart Augustsson <lennart@augustsson.net>";
      author = "Bryan O'Sullivan, Lennart Augustsson";
      homepage = "https://github.com/bos/llvm";
      url = "";
      synopsis = "Bindings to the LLVM compiler toolkit.";
      description = "Bindings to the LLVM compiler toolkit.\n\nWe try to stay up to date with LLVM releases.  The current version\nof this package is compatible with LLVM 2.9 and 2.8.  Please\nunderstand that the package may or may not work against older LLVM\nreleases; we don't have the time or resources to test across\nmultiple releases.\n\n* New in 0.9.1.1: Builds against LLVM 2.9.\n\n* New in 0.9.1.0: Util.Memory for memory related intrinsics.\n\n* New in 0.9.0.0: Adapted to LLVM 2.8 (removed support for Union types).";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."type-level" or (errorHandler.buildDepError "type-level"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."vecLib" or (errorHandler.sysDepError "vecLib"));
        buildable = true;
        };
      };
    }