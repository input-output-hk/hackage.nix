{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "ghc-pkg-autofix";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "konn.jinro_at_gmail.com";
      author = "Hiromi ISHII";
      homepage = "";
      url = "";
      synopsis = "Simple utility to fix BROKEN package dependencies.";
      description = "The cabal-install sometimes reinstall existing library and break some package dependencies. This utility fixes such situations by replacing old package id in \"broken\" package with new id.\nPlease Use at your own risk.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ghc-pkg-autofix" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.split)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.Cabal)
          ];
        };
      };
    };
  }