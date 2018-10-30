{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      useplatformandroidkhr = false;
      useplatformiosmvk = false;
      useplatformmacosmvk = false;
      useplatformmirkhr = false;
      useplatformvinn = false;
      useplatformwaylandkhr = false;
      useplatformwin32khr = false;
      useplatformxcbkhr = false;
      useplatformxlibkhr = false;
      useplatformxlibxrandrext = false;
    };
    package = {
      specVersion = "1.22";
      identifier = {
        name = "vulkan-api";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Artem Chirkin";
      maintainer = "chirkin@arch.ethz.ch";
      author = "Artem Chirkin";
      homepage = "https://github.com/achirkin/genvulkan#readme";
      url = "";
      synopsis = "Low-level low-overhead vulkan api bindings";
      description = "Haskell bindings for vulkan api as described in vk.xml.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
        ];
        libs = [ (pkgs."vulkan") ];
      };
    };
  }