{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "wholepixels"; version = "1.1"; };
      license = "Apache-2.0";
      copyright = "2019 WholePixels";
      maintainer = "wholepixels@protonmail.com";
      author = "WholePixels";
      homepage = "";
      url = "";
      synopsis = "";
      description = "A library for making generative art with Haskell and Cairo";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.MonadRandom)
          (hsPkgs.base)
          (hsPkgs.cairo)
          (hsPkgs.colour)
          (hsPkgs.directory)
          (hsPkgs.hsnoise)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.random-fu)
          (hsPkgs.random-shuffle)
          (hsPkgs.random-source)
          (hsPkgs.relude)
          (hsPkgs.temporary)
          (hsPkgs.time)
          ];
        };
      };
    }