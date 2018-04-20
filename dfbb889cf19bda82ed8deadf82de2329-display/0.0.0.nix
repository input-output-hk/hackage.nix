{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "display";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Chris Done";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "https://github.com/chrisdone/display#readme";
        url = "";
        synopsis = "Display things for humans to read";
        description = "Efficiently display things for humans to read";
        buildType = "Simple";
      };
      components = {
        display = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
      };
    }