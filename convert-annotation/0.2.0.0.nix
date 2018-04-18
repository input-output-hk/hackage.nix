{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "convert-annotation";
          version = "0.2.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "Copyright: (c) 2016 Gregory W. Schwartz";
        maintainer = "youremail@example.com";
        author = "Gregory W. Schwartz";
        homepage = "http://github.com/GregorySchwartz/convert-annotation#readme";
        url = "";
        synopsis = "Insert synopsis here";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        convert-annotation = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.lens
            hsPkgs.lens-aeson
            hsPkgs.wreq
            hsPkgs.HTTP
            hsPkgs.safe
          ];
        };
        exes = {
          convert-annotation = {
            depends  = [
              hsPkgs.base
              hsPkgs.convert-annotation
              hsPkgs.optparse-generic
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.cassava
              hsPkgs.pipes
              hsPkgs.pipes-bytestring
              hsPkgs.pipes-csv
              hsPkgs.lens
            ];
          };
        };
      };
    }