{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "lambdabot-trusted";
          version = "5.0.2.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Bertram Felgenhauer <int-e@gmx.de>";
        author = "Bertram Felgenhauer";
        homepage = "http://haskell.org/haskellwiki/Lambdabot";
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