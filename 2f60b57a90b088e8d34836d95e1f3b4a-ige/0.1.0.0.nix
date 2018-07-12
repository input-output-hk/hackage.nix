{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ige";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "owen@olynch.me";
        author = "Owen Lynch";
        homepage = "https://github.com/olynch/ige";
        url = "";
        synopsis = "An keyboard-driven interactive graph editor";
        description = "`IGE` attempts to build a reusable library for implementing graph editors. The intent is to allow a new class of programming languages that have non-linear structure. See `glance` (an alternative syntax for haskell) for one example of such a structure. Other applications include circuit design, commutative diagram drawing, server configuration. Currently a very early alpha.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "ige" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cairo
              hsPkgs.gtk
              hsPkgs.protolude
              hsPkgs.fgl
              hsPkgs.microlens-platform
              hsPkgs.linear
              hsPkgs.containers
              hsPkgs.conduit
              hsPkgs.conduit-combinators
              hsPkgs.stm-conduit
              hsPkgs.stm-chans
              hsPkgs.stm
              hsPkgs.array
              hsPkgs.mwc-random
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.megaparsec
              hsPkgs.text
              hsPkgs.wl-pprint-text
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.directory
            ];
          };
        };
      };
    }