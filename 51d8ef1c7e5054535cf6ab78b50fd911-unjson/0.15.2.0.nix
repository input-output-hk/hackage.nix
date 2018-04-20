{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "unjson";
          version = "0.15.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Scrive AB";
        maintainer = "Gracjan Polak <gracjanpolak@gmail.com>,\nJonathan Jouty <jonathan@scrive.com>,\nMikhail Glushenkov <mikhail@scrive.com>";
        author = "Scrive AB";
        homepage = "https://github.com/scrive/unjson";
        url = "";
        synopsis = "Bidirectional JSON parsing and generation.";
        description = "Bidirectional JSON parsing and generation\nwith automatic documentation support.";
        buildType = "Simple";
      };
      components = {
        unjson = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.free
            hsPkgs.hashable
            hsPkgs.invariant
            hsPkgs.pretty
            hsPkgs.primitive
            hsPkgs.scientific
            hsPkgs.semigroups
            hsPkgs.text
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.unjson
              hsPkgs.base
              hsPkgs.text
              hsPkgs.aeson
              hsPkgs.free
              hsPkgs.scientific
              hsPkgs.attoparsec
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.HUnit
              hsPkgs.bytestring
              hsPkgs.pretty
              hsPkgs.primitive
              hsPkgs.containers
              hsPkgs.time
              hsPkgs.hashable
              hsPkgs.invariant
            ];
          };
        };
      };
    }