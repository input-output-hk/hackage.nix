{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "distribution-opensuse";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "simons@cryp.to";
        author = "Peter Simons";
        homepage = "https://github.com/peti/distribution-opensuse/";
        url = "";
        synopsis = "Types, functions, and tools to manipulate the openSUSE distribution";
        description = "Types, functions, and tools to manipulate the openSUSE distribution.";
        buildType = "Simple";
      };
      components = {
        "distribution-opensuse" = {
          depends  = [
            hsPkgs.base
            hsPkgs.Diff
            hsPkgs.aeson
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.extra
            hsPkgs.foldl
            hsPkgs.hashable
            hsPkgs.hsemail
            hsPkgs.mtl
            hsPkgs.parsec-class
            hsPkgs.pretty
            hsPkgs.text
            hsPkgs.time
            hsPkgs.turtle
          ];
        };
        exes = {
          "guess-changelog" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.distribution-opensuse
              hsPkgs.text
              hsPkgs.turtle
            ];
          };
        };
      };
    }