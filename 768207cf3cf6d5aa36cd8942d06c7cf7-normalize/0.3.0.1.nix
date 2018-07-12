{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "normalize";
          version = "0.3.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "Copyright: (c) 2017 Gregory W. Schwartz";
        maintainer = "gsch@mail.med.upenn.edu";
        author = "Gregory W. Schwartz";
        homepage = "http://github.com/GregorySchwartz/normalize#readme";
        url = "";
        synopsis = "Normalize data using a variety of methods.";
        description = "Normalize data using a variety of methods. For use with csv files.";
        buildType = "Simple";
      };
      components = {
        "normalize" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.lens
            hsPkgs.vector
            hsPkgs.text
            hsPkgs.cassava
            hsPkgs.statistics
          ];
        };
        exes = {
          "normalize" = {
            depends  = [
              hsPkgs.base
              hsPkgs.normalize
              hsPkgs.optparse-generic
              hsPkgs.containers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.cassava
            ];
          };
        };
      };
    }