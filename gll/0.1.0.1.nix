{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "gll";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ltvanbinsbergen@acm.org";
        author = "L. Thomas van Binsbergen";
        homepage = "";
        url = "";
        synopsis = "GLL parser with simple combinator interface";
        description = "";
        buildType = "Simple";
      };
      components = {
        gll = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.array
          ];
        };
      };
    }