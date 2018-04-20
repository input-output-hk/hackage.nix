{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      ghcapi = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "MagicHaskeller";
          version = "0.8.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Susumu Katayama <skata@cs.miyazaki-u.ac.jp>";
        author = "Susumu Katayama";
        homepage = "http://nautilus.cs.miyazaki-u.ac.jp/~skata/MagicHaskeller.html";
        url = "";
        synopsis = "Automatic inductive functional programmer by systematic search";
        description = "";
        buildType = "Simple";
      };
      components = {
        MagicHaskeller = {
          depends  = [
            hsPkgs.template-haskell
            hsPkgs.base
            hsPkgs.syb
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.random
            hsPkgs.directory
            hsPkgs.bytestring
            hsPkgs.mtl
          ] ++ pkgs.lib.optionals _flags.ghcapi [
            hsPkgs.ghc
            hsPkgs.old-time
            hsPkgs.ghc-paths
          ];
        };
      };
    }