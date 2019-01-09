{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "smoothie"; version = "0.3.3.1"; };
      license = "BSD-3-Clause";
      copyright = "Dimitri Sabadie";
      maintainer = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      author = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      homepage = "https://github.com/phaazon/smoothie";
      url = "";
      synopsis = "Smooth curves via several interpolation modes";
      description = "This package exports several splines you can use\nto interpolate points in between. It includes instances for\n<https://hackage.haskell.org/package/aeson aeson> so that\nyou can quickly store the splines and restore them.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.linear)
          (hsPkgs.vector)
          (hsPkgs.aeson)
          ];
        };
      };
    }