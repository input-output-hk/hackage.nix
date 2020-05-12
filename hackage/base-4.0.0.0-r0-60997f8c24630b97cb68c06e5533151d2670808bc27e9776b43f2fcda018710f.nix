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
      specVersion = "1.2.3";
      identifier = { name = "base"; version = "4.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Basic libraries";
      description = "This package contains the Prelude and its support libraries,\nand a large collection of useful libraries ranging from data\nstructures to parsing combinators and debugging utilities.";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = (pkgs.lib).optionals (compiler.isGhc && true) [
          (hsPkgs."rts" or (errorHandler.buildDepError "rts"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."integer" or (errorHandler.buildDepError "integer"))
          ];
        libs = (pkgs.lib).optionals (system.isWindows) [
          (pkgs."wsock32" or (errorHandler.sysDepError "wsock32"))
          (pkgs."msvcrt" or (errorHandler.sysDepError "msvcrt"))
          (pkgs."kernel32" or (errorHandler.sysDepError "kernel32"))
          (pkgs."user32" or (errorHandler.sysDepError "user32"))
          (pkgs."shell32" or (errorHandler.sysDepError "shell32"))
          ];
        buildable = true;
        };
      };
    }