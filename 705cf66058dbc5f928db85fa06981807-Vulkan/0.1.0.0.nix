{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Vulkan";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2016 Sven Panne";
        maintainer = "Sven Panne <svenpanne@gmail.com>";
        author = "Sven Panne";
        homepage = "";
        url = "";
        synopsis = "A binding for the Vulkan API";
        description = "All the examples from the OpenGL SuperBible (7th ed.) in Haskell.";
        buildType = "Simple";
      };
      components = {
        Vulkan = {
          depends  = [ hsPkgs.base ];
        };
      };
    }