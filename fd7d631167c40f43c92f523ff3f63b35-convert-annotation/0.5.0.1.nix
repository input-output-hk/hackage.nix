{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "convert-annotation";
          version = "0.5.0.1";
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
        "convert-annotation" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.deepseq
            hsPkgs.aeson
            hsPkgs.lens
            hsPkgs.lens-aeson
            hsPkgs.req
            hsPkgs.HTTP
            hsPkgs.safe
            hsPkgs.inline-r
          ];
        };
        exes = {
          "convert-annotation" = {
            depends  = [
              hsPkgs.base
              hsPkgs.convert-annotation
              hsPkgs.optparse-generic
              hsPkgs.vector
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