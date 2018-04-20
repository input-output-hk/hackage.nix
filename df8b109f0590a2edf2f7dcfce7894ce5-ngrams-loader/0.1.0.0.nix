{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ngrams-loader";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "Copyright (C) 2014 Yorick Laupa";
        maintainer = "Yorick Laupa <yo.eight@gmail.com>";
        author = "Yorick Laupa";
        homepage = "http://github.com/YoEight/ngrams-loader";
        url = "";
        synopsis = "Ngrams loader based on http://www.ngrams.info format";
        description = "Ngrams loader based on http://www.ngrams.info format";
        buildType = "Simple";
      };
      components = {
        ngrams-loader = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.machines
            hsPkgs.mtl
            hsPkgs.resourcet
            hsPkgs.sqlite-simple
            hsPkgs.text
          ];
        };
        exes = {
          ngrams-loader = {
            depends  = [
              hsPkgs.base
              hsPkgs.ngrams-loader
              hsPkgs.parseargs
            ];
          };
        };
      };
    }