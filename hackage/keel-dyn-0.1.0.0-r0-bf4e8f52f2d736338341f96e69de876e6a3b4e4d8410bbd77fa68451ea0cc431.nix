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
      specVersion = "3.0";
      identifier = { name = "keel-dyn"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Zhe Zhang";
      author = "Zhe Zhang";
      homepage = "https://github.com/skymanbp/keel";
      url = "";
      synopsis = "Load native shared libraries at run time, cross-platform";
      description = "Cross-platform runtime loading and symbol resolution for native shared\nlibraries: LoadLibraryExW/GetProcAddress on Windows,\ndlopen/dlsym elsewhere.\n.\nThis package is the keystone of the keel project: every native\ncapability (OpenBLAS, ONNX Runtime, ...) is resolved at run time\nthrough it, so no keel package ever carries a build-time C dependency\nand @cabal install@ can never fail on a missing native library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        buildable = true;
      };
      tests = {
        "keel-dyn-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."keel-dyn" or (errorHandler.buildDepError "keel-dyn"))
          ];
          buildable = true;
        };
      };
    };
  }