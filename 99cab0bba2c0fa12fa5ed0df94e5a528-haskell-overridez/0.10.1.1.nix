{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "2.0";
        identifier = {
          name = "haskell-overridez";
          version = "0.10.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tim.emiola@gmail.com";
        author = "Tim Emiola";
        homepage = "";
        url = "";
        synopsis = "Manage nix overrides for haskell packages";
        description = "A tool to simplify the use of nix overrides during haskell development";
        buildType = "Simple";
      };
      components = {
        exes = {
          "haskell-overridez" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.aeson-casing
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.exceptions
              hsPkgs.foldl
              hsPkgs.managed
              hsPkgs.neat-interpolation
              hsPkgs.network-uri
              hsPkgs.optparse-applicative
              hsPkgs.system-filepath
              hsPkgs.system-fileio
              hsPkgs.text
              hsPkgs.turtle
              hsPkgs.Cabal
            ];
          };
        };
      };
    }