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
    flags = { include-ghc-prim = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ghc-prim"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "GHC primitives";
      description = "This package contains the primitive types and operations supplied by GHC.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."rts" or (errorHandler.buildDepError "rts")) ];
        libs = (pkgs.lib).optionals (system.isWindows) [
          (pkgs."user32" or (errorHandler.sysDepError "user32"))
          (pkgs."mingw32" or (errorHandler.sysDepError "mingw32"))
          (pkgs."mingwex" or (errorHandler.sysDepError "mingwex"))
          ];
        buildable = true;
        };
      };
    }