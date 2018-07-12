{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hakyll-contrib";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
        author = "Jasper Van der Jeugt <m@jaspervdj.be>";
        homepage = "http://jaspervdj.be/hakyll";
        url = "";
        synopsis = "Extra modules for the hakyll website compiler";
        description = "";
        buildType = "Simple";
      };
      components = {
        "hakyll-contrib" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hakyll
            hsPkgs.pandoc
          ];
        };
        exes = {
          "hakyll-contrib" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hakyll
              hsPkgs.directory
              hsPkgs.filepath
            ];
          };
        };
      };
    }