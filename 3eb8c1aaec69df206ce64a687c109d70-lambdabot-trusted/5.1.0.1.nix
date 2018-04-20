{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "lambdabot-trusted";
          version = "5.1.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Bertram Felgenhauer <int-e@gmx.de>";
        author = "Bertram Felgenhauer";
        homepage = "https://wiki.haskell.org/Lambdabot";
        url = "";
        synopsis = "Lambdabot trusted code.";
        description = "Lambdabot is an IRC bot written over several years by\nthose on the #haskell IRC channel.\n\nThis small package provides functions used by\nthe \\@run command.";
        buildType = "Simple";
      };
      components = {
        lambdabot-trusted = {
          depends  = [
            hsPkgs.base
            hsPkgs.oeis
            hsPkgs.QuickCheck-safe
            hsPkgs.QuickCheck
          ];
        };
      };
    }