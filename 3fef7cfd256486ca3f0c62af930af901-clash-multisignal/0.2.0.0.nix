{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "clash-multisignal";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Luka Rahne";
        maintainer = "luka.rahne@gmail.com";
        author = "Luka Rahne";
        homepage = "https://github.com/ra1u/clash-multisignal";
        url = "";
        synopsis = "";
        description = "Clash/Fpga library for working with multiple elements arriving at same clock as stream.";
        buildType = "Simple";
      };
      components = {
        "clash-multisignal" = {
          depends  = [
            hsPkgs.base
            hsPkgs.clash-prelude
            hsPkgs.QuickCheck
            hsPkgs.deepseq
            hsPkgs.ghc-typelits-knownnat
          ];
        };
      };
    }