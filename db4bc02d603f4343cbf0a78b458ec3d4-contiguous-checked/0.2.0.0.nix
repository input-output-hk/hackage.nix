{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "2.0";
        identifier = {
          name = "contiguous-checked";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Andrew Martin";
        maintainer = "andrew.thaddeus@gmail.com";
        author = "Andrew Martin";
        homepage = "https://github.com/andrewthad/contiguous-checked";
        url = "";
        synopsis = "";
        description = "Please see the README on GitHub";
        buildType = "Simple";
      };
      components = {
        contiguous-checked = {
          depends  = [
            hsPkgs.base
            hsPkgs.primitive
            hsPkgs.contiguous
          ];
        };
      };
    }