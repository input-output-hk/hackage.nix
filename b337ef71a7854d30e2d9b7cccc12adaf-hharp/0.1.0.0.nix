{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hharp";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tho.feron@gmail.com";
        author = "Thomas Feron";
        homepage = "http://www.harphttp.org";
        url = "";
        synopsis = "Binding to libharp";
        description = "Binding to the library libharp managing configurations for Harp.";
        buildType = "Simple";
      };
      components = {
        hharp = {
          depends  = [ hsPkgs.base ];
          libs = [ pkgs.harp ];
        };
      };
    }