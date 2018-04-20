{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "idiii";
          version = "0.1.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Chris Wagner <christopher.t.wagner@gmail.com>, Alexey Alekhin <alekhin.alexey@gmail.com>, Bart Massey <bart.massey@gmail.com>";
        author = "Alexey Alekhin, Chris Wagner";
        homepage = "";
        url = "";
        synopsis = "ID3v2 (tagging standard for MP3 files) library";
        description = "ID3v2 (tagging standard for MP3 files) library";
        buildType = "Simple";
      };
      components = {
        idiii = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.polyparse
            hsPkgs.text
            hsPkgs.data-accessor
            hsPkgs.utf8-string
            hsPkgs.containers
            hsPkgs.MissingH
          ];
        };
        exes = {
          read-idiii = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.idiii
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.HUnit
              hsPkgs.bytestring
              hsPkgs.polyparse
              hsPkgs.text
              hsPkgs.data-accessor
              hsPkgs.utf8-string
              hsPkgs.containers
              hsPkgs.MissingH
            ];
          };
        };
      };
    }