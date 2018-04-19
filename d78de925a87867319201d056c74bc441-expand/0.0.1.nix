{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "expand";
          version = "0.0.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "jaccokrijnen@gmail.com";
        author = "Jacco Krijnen";
        homepage = "";
        url = "";
        synopsis = "Extensible Pandoc";
        description = "";
        buildType = "Simple";
      };
      components = {
        expand = {
          depends  = [
            hsPkgs.base
            hsPkgs.murder
            hsPkgs.uu-parsinglib
            hsPkgs.AspectAG
            hsPkgs.HList
          ];
        };
      };
    }