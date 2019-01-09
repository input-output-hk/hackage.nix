{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "rad"; version = "0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "Edward Kmett 2010";
      maintainer = "ekmett@gmail.com";
      author = "Edward Kmett 2010";
      homepage = "http://comonad.com/reader/";
      url = "";
      synopsis = "Reverse Automatic Differentiation.";
      description = "Reverse-Mode Automatic Differentiation via overloading.\nExistential type \\\"branding\\\" is used to prevent sensitivity confusion.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.data-reify)
          (hsPkgs.containers)
          (hsPkgs.array)
          ];
        };
      };
    }