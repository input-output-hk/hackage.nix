{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "ghc-pkg-autofix"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "konn.jinro_at_gmail.com";
      author = "Hiromi ISHII";
      homepage = "";
      url = "";
      synopsis = "Simple utility to fix BROKEN package dependencies for cabal-install.";
      description = "The cabal-install sometimes reinstall existing library and break some package dependencies. This utility fixes such situations by replacing old package id in \"broken\" package with new id.\nPlease Use at your own risk.\nNOTE for v.0.2: Now ghc-pkg-autofix supports cabal-dev!";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ghc-pkg-autofix" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.split)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.Cabal)
            (hsPkgs.cmdargs)
            ];
          };
        };
      };
    }