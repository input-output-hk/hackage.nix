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
      identifier = { name = "ghc-prim"; version = "0.7.0"; };
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
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
      ];
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."rts" or (errorHandler.buildDepError "rts")) ];
        libs = pkgs.lib.optionals (system.isWindows) [
          (pkgs."user32" or (errorHandler.sysDepError "user32"))
          (pkgs."mingw32" or (errorHandler.sysDepError "mingw32"))
          (pkgs."mingwex" or (errorHandler.sysDepError "mingwex"))
        ] ++ pkgs.lib.optionals (system.isLinux) [
          (pkgs."c" or (errorHandler.sysDepError "c"))
          (pkgs."m" or (errorHandler.sysDepError "m"))
        ];
        buildable = true;
      };
    };
  }