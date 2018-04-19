{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "HERA";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "";
        author = "";
        homepage = "";
        url = "";
        synopsis = "";
        description = "";
        buildType = "Simple";
      };
      components = {
        HERA = {
          depends  = [ hsPkgs.base ];
          libs = [ pkgs.mpfr ];
        };
      };
    }