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
      identifier = { name = "base-noprelude"; version = "4.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "https://github.com/hvr/base-noprelude";
      url = "";
      synopsis = "\"base\" package sans \"Prelude\" module";
      description = "This package simplifies defining custom \"Prelude\"s without having\nto use @-XNoImplicitPrelude@ by re-exporting the full\nmodule-hierarchy of the\n<http://hackage.haskell.org/package/base-4.3.0.0 base-4.3.0.0>\npackage /except/ for the \"Prelude\" module.\n\nEach version of @base-noprelude@ depends on a specific\n@base@-version and thus mirrors @base@'s\nversioning (with the exception that @base-noprelude@ needs to add an\n/additional/ 5th version component in case of bug-fix releases).\n\nSee <https://github.com/hvr/base-noprelude> for more information.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.filepath or (pkgs.pkgsBuildBuild.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
      ];
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }