{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hmatrix-csv";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Jochen Goertler";
        maintainer = "lyzrd17@gmail.com";
        author = "Jochen Goertler";
        homepage = "https://github.com/grtlr/hmatrix-csv";
        url = "";
        synopsis = "CSV encoding and decoding for hmatrix.";
        description = "Aims to provide easy CSV encoding and decoding of matrices.\nRight now only matrices of type 'Double' are supported.\nPlease feel free to report issues or possible improvements.";
        buildType = "Simple";
      };
      components = {
        "hmatrix-csv" = {
          depends  = [
            hsPkgs.base
            hsPkgs.cassava
            hsPkgs.hmatrix
            hsPkgs.vector
            hsPkgs.bytestring
          ];
        };
      };
    }