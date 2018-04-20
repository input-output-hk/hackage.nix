{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "coordinate";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013-2016 NICTA Limited\nCopyright (c) 2018, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "https://github.com/qfpl/coordinate";
        url = "";
        synopsis = "A representation of latitude and longitude";
        description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nA representation of latitude and longitude";
        buildType = "Simple";
      };
      components = {
        coordinate = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.transformers
            hsPkgs.papa
          ];
        };
        tests = {
          hunit = {
            depends  = [
              hsPkgs.base
              hsPkgs.coordinate
              hsPkgs.HUnit
              hsPkgs.lens
            ];
          };
        };
      };
    }