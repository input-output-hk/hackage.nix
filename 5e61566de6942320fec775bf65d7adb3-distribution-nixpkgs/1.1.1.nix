{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "distribution-nixpkgs";
          version = "1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Peter Simons <simons@cryp.to>";
        author = "";
        homepage = "https://github.com/peti/distribution-nixpkgs#readme";
        url = "";
        synopsis = "Types and functions to manipulate the Nixpkgs distribution";
        description = "Types and functions to represent, query, and manipulate the Nixpkgs distribution.";
        buildType = "Simple";
      };
      components = {
        distribution-nixpkgs = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.Cabal
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.language-nix
            hsPkgs.lens
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.split
          ];
        };
        tests = {
          hspec = {
            depends  = [
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.distribution-nixpkgs
              hsPkgs.hspec
              hsPkgs.lens
            ];
          };
        };
      };
    }