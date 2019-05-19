{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { library-only = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "chiphunk"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Cthulhu (c) 2018";
      maintainer = "cthulhu.den@gmail.com";
      author = "Cthulhu";
      homepage = "https://github.com/CthulhuDen/chiphunk#readme";
      url = "";
      synopsis = "Haskell bindings for Chipmunk2D physics engine";
      description = "Please see the README on GitHub at <https://github.com/CthulhuDen/chiphunk#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.StateVar)
          (hsPkgs.base)
          (hsPkgs.safe-exceptions)
          (hsPkgs.vector-space)
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs))
          ];
        };
      exes = {
        "chiphunk" = {
          depends = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.chiphunk)
            (hsPkgs.nanovg)
            (hsPkgs.nanovg-simple)
            ];
          };
        };
      };
    }