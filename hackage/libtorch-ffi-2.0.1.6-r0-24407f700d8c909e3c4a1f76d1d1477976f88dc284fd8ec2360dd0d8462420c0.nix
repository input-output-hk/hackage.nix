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
    flags = { cuda = false; rocm = false; gcc = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "libtorch-ffi"; version = "2.0.1.6"; };
      license = "BSD-3-Clause";
      copyright = "2018 Austin Huang";
      maintainer = "hasktorch@gmail.com";
      author = "Austin Huang";
      homepage = "https://github.com/hasktorch/hasktorch#readme";
      url = "";
      synopsis = "Haskell bindings for PyTorch";
      description = "This package provides Haskell bindings to libtorch, the C++ library underlying PyTorch, specifically designed for the Hasktorch ecosystem.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.directory or (pkgs.pkgsBuildBuild.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.pkgsBuildBuild.filepath or (pkgs.pkgsBuildBuild.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.pkgsBuildBuild.process or (pkgs.pkgsBuildBuild.process or (errorHandler.setupDepError "process")))
        (hsPkgs.pkgsBuildBuild.temporary or (pkgs.pkgsBuildBuild.temporary or (errorHandler.setupDepError "temporary")))
        (hsPkgs.pkgsBuildBuild.http-conduit or (pkgs.pkgsBuildBuild.http-conduit or (errorHandler.setupDepError "http-conduit")))
        (hsPkgs.pkgsBuildBuild.bytestring or (pkgs.pkgsBuildBuild.bytestring or (errorHandler.setupDepError "bytestring")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."inline-c-cpp" or (errorHandler.buildDepError "inline-c-cpp"))
          (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."sysinfo" or (errorHandler.buildDepError "sysinfo"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."libtorch-ffi-helper" or (errorHandler.buildDepError "libtorch-ffi-helper"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        libs = (([
          (pkgs."c10" or (errorHandler.sysDepError "c10"))
          (pkgs."torch" or (errorHandler.sysDepError "torch"))
          (pkgs."torch_cpu" or (errorHandler.sysDepError "torch_cpu"))
        ] ++ (if system.isOsx
          then [ (pkgs."c++" or (errorHandler.sysDepError "c++")) ]
          else [
            (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          ])) ++ pkgs.lib.optional (flags.cuda) (pkgs."torch_cuda" or (errorHandler.sysDepError "torch_cuda"))) ++ pkgs.lib.optionals (flags.rocm) [
          (pkgs."c10_hip" or (errorHandler.sysDepError "c10_hip"))
          (pkgs."torch_hip" or (errorHandler.sysDepError "torch_hip"))
          (pkgs."sqlite3" or (errorHandler.sysDepError "sqlite3"))
          (pkgs."tinfo" or (errorHandler.sysDepError "tinfo"))
          (pkgs."bz2" or (errorHandler.sysDepError "bz2"))
          (pkgs."z" or (errorHandler.sysDepError "z"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."libtorch-ffi" or (errorHandler.buildDepError "libtorch-ffi"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          ];
          buildable = true;
        };
      };
    };
  }