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
      specVersion = "2.2";
      identifier = { name = "ghc-prim"; version = "0.9.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "GHC primitives";
      description = "This package contains the primitive types and operations supplied by GHC.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or (errorHandler.setupDepError "process")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
      ];
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."rts" or (errorHandler.buildDepError "rts")) ];
        libs = pkgs.lib.optionals (system.isWindows) [
          (pkgs."user32" or (errorHandler.sysDepError "user32"))
          (pkgs."mingw32" or (errorHandler.sysDepError "mingw32"))
          (pkgs."mingwex" or (errorHandler.sysDepError "mingwex"))
          (pkgs."ucrt" or (errorHandler.sysDepError "ucrt"))
        ] ++ pkgs.lib.optionals (system.isLinux) [
          (pkgs."c" or (errorHandler.sysDepError "c"))
          (pkgs."m" or (errorHandler.sysDepError "m"))
        ];
        buildable = true;
      };
    };
  }