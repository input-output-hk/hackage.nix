{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "linux-kmod";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "© 2013-2014 Nicola Squartini";
        maintainer = "Nicola Squartini <tensor5@gmail.com>";
        author = "Nicola Squartini";
        homepage = "https://github.com/tensor5/linux-kmod";
        url = "";
        synopsis = "Linux kernel modules support";
        description = "Manipulate Linux kernel modules through the @libkmod@ library.";
        buildType = "Simple";
      };
      components = {
        linux-kmod = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
          ];
        };
      };
    }