{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "unjson";
          version = "0.14.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Scrive AB";
        maintainer = "Gracjan Polak <gracjanpolak@gmail.com>, Jonathan Jouty <jonathan@scrive.com>, Mikhail Glushenkov <mikhail@scrive.com>";
        author = "Scrive AB";
        homepage = "";
        url = "";
        synopsis = "Bidirectional JSON parsing and generation.";
        description = "Bidirectional JSON parsing and generation with automatic documentation support.";
        buildType = "Simple";
      };
      components = {
        "unjson" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.free
            hsPkgs.scientific
            hsPkgs.attoparsec
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.pretty
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.primitive
            hsPkgs.time
            hsPkgs.invariant
          ];
        };
        tests = {
          "test" = {
            depends  = [
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