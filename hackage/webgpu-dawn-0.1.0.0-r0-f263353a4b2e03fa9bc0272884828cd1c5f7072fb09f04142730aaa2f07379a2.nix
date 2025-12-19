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
    flags = { glfw = true; };
    package = {
      specVersion = "3.0";
      identifier = { name = "webgpu-dawn"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "junji.hashimoto@gmail.com";
      author = "Junji Hashimoto";
      homepage = "https://github.com/junjihashimoto/webgpu-dawn";
      url = "";
      synopsis = "Haskell bindings to WebGPU Dawn for GPU computing and graphics";
      description = "This package provides Haskell bindings to Google's Dawn WebGPU implementation,\nenabling GPU computing and graphics programming from Haskell. It wraps the\ngpu.cpp library which provides a high-level C++ interface to Dawn.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.directory or (pkgs.pkgsBuildBuild.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.pkgsBuildBuild.filepath or (pkgs.pkgsBuildBuild.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.pkgsBuildBuild.process or (pkgs.pkgsBuildBuild.process or (errorHandler.setupDepError "process")))
        (hsPkgs.pkgsBuildBuild.http-conduit or (pkgs.pkgsBuildBuild.http-conduit or (errorHandler.setupDepError "http-conduit")))
        (hsPkgs.pkgsBuildBuild.bytestring or (pkgs.pkgsBuildBuild.bytestring or (errorHandler.setupDepError "bytestring")))
        (hsPkgs.pkgsBuildBuild.zip-archive or (pkgs.pkgsBuildBuild.zip-archive or (errorHandler.setupDepError "zip-archive")))
        (hsPkgs.pkgsBuildBuild.temporary or (pkgs.pkgsBuildBuild.temporary or (errorHandler.setupDepError "temporary")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        libs = ([
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
        ] ++ pkgs.lib.optional (system.isOsx) (pkgs."c++" or (errorHandler.sysDepError "c++"))) ++ pkgs.lib.optional (system.isLinux) (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"));
        frameworks = pkgs.lib.optionals (system.isOsx) ([
          (pkgs."Metal" or (errorHandler.sysDepError "Metal"))
          (pkgs."Foundation" or (errorHandler.sysDepError "Foundation"))
          (pkgs."QuartzCore" or (errorHandler.sysDepError "QuartzCore"))
          (pkgs."IOKit" or (errorHandler.sysDepError "IOKit"))
          (pkgs."IOSurface" or (errorHandler.sysDepError "IOSurface"))
        ] ++ pkgs.lib.optional (flags.glfw) (pkgs."Cocoa" or (errorHandler.sysDepError "Cocoa")));
        buildable = true;
      };
      tests = {
        "webgpu-dawn-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."webgpu-dawn" or (errorHandler.buildDepError "webgpu-dawn"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }