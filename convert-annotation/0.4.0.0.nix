{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "convert-annotation";
          version = "0.4.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "Copyright: (c) 2016 Gregory W. Schwartz";
        maintainer = "gsch@mail.med.upenn.edu";
        author = "Gregory W. Schwartz";
        homepage = "http://github.com/GregorySchwartz/convert-annotation#readme";
        url = "";
        synopsis = "Convert the annotation of a gene to another in a delimited file using a variety of different databases.";
        description = "Please see README.org";
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
            hsPkgs.inline-r
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
              hsPkgs.inline-r
            ];
          };
        };
      };
    }