{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "zeromq4-conduit";
          version = "0.1.0.0";
        };
        license = "LGPL-2.1-only";
        copyright = "2017 Andy Georges";
        maintainer = "Andy Georges";
        author = "Nicolas Trangez (2012), Andy Georges (2017)";
        homepage = "https://github.com/itkovian/zeromq4-conduit#readme";
        url = "";
        synopsis = "Conduit wrapper around zeromq4-haskell";
        description = "Conduit wrapper around zeromq4-haskell";
        buildType = "Simple";
      };
      components = {
        "zeromq4-conduit" = {
          depends  = [
            hsPkgs.base
            hsPkgs.lifted-base
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.monad-control
            hsPkgs.resourcet
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.semigroups
            hsPkgs.zeromq4-haskell
          ];
        };
        tests = {
          "zeromq4-conduit-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.zeromq4-conduit
            ];
          };
        };
      };
    }