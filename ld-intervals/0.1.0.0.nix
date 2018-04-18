{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ld-intervals";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Savanni D'Gerinel";
        maintainer = "savanni@savannidgerinel.com";
        author = "Savanni D'Gerinel";
        homepage = "https://github.com/savannidgerinel/intervals#readme";
        url = "";
        synopsis = "Data structures for representing arbitrary intervals";
        description = "Please see readme.md";
        buildType = "Simple";
      };
      components = {
        ld-intervals = {
          depends  = [ hsPkgs.base ];
        };
      };
    }