{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "dynamic-linker-template";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "hsyl20@gmail.com";
        author = "Sylvain HENRY";
        homepage = "http://github.com/roconnor/dynamic-linker-template";
        url = "";
        synopsis = "Automatically derive dynamic linking methods from a data type.";
        description = "";
        buildType = "Simple";
      };
      components = {
        dynamic-linker-template = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.unix
            hsPkgs.containers
          ];
        };
      };
    }