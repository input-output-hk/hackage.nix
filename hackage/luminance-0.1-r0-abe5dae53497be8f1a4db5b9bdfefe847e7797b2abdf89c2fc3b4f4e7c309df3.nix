{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debug-gl = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "luminance"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Dimitri Sabadie";
      maintainer = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      author = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      homepage = "https://github.com/phaazon/luminance";
      url = "";
      synopsis = "Type-safe, dependently-typed and stateless graphics framework";
      description = "This package exposes several modules to work with /GPU/ in a stateless and\ntype-safe way. Currently, it uses **OpenGL** as backend hardware technology but\nothers will be added later on, such as **Vulkan**.\n\nThe initial unstable version is /0.1/. Consider everything in that version as\npart of an experiment, even though the library should be free of bugs. If you\nfind any, please report an issue. If you think something could be enhanced,\nfeel free to fill in an issue as well.\n\nOne very important point is the fact that **luminance** has nothing to do with\n/3D engines/ or /scene development kits/. Don’t expect to find /materials/,\n/lights/ or /mesh/ loaders. It’s just a graphics framework initiated to fix the\ndesign choices of **OpenGL**. It won’t change in any other way.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.contravariant)
          (hsPkgs.gl)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
          (hsPkgs.void)
          ];
        };
      };
    }