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
      specVersion = "2.0";
      identifier = { name = "gi-gtksource"; version = "3.0.30"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Iñaki García Etxebarria";
      author = "Iñaki García Etxebarria";
      homepage = "https://github.com/haskell-gi/haskell-gi";
      url = "";
      synopsis = "GtkSource 3.x bindings (compatibility layer)";
      description = "This package re-exports (for backward compatibility)\nthe haskell-gi generated bindings in the gi-gtksource3 package.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.haskell-gi or (pkgs.pkgsBuildBuild.haskell-gi or (errorHandler.setupDepError "haskell-gi")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.gi-gtksource3 or (pkgs.pkgsBuildBuild.gi-gtksource3 or (errorHandler.setupDepError "gi-gtksource3")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gi-gtksource3" or (errorHandler.buildDepError "gi-gtksource3"))
        ];
        buildable = true;
      };
    };
  }