{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "grids"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/grids#readme";
      url = "";
      synopsis = "";
      description = "Arbitrary sized type-safe grids with useful combinators";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.adjunctions)
          (hsPkgs.base)
          (hsPkgs.distributive)
          (hsPkgs.finite-typelits)
          (hsPkgs.vector)
          ];
        };
      };
    }