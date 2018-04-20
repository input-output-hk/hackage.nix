{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "concraft-hr";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "vjeran.crnjak@gmail.com";
        author = "Vjeran Crnjak";
        homepage = "https://github.com/vjeranc/concraft-hr";
        url = "";
        synopsis = "Part-of-speech tagger for Croatian";
        description = "A part-of-speech tagger for Croatian based on the concraft library.";
        buildType = "Simple";
      };
      components = {
        concraft-hr = {
          depends  = [
            hsPkgs.base
            hsPkgs.concraft
            hsPkgs.tagset-positional
            hsPkgs.sgd
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.binary
            hsPkgs.network
            hsPkgs.lazy-io
            hsPkgs.split
            hsPkgs.moan
            hsPkgs.double-conversion
          ];
        };
        exes = {
          concraft-hr = {
            depends  = [ hsPkgs.cmdargs ];
          };
        };
      };
    }