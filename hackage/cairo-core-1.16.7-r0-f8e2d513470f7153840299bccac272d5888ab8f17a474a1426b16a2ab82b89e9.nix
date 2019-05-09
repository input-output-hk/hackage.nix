{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "cairo-core"; version = "1.16.7"; };
      license = "BSD-3-Clause";
      copyright = "None";
      maintainer = "magiclouds@gmail.com";
      author = "Magicloud";
      homepage = "https://github.com/magicloud/cairo-core#readme";
      url = "";
      synopsis = "Cairo Haskell binding (partial)";
      description = "For using Cairo in Haskell. Functions/Types for X11, Windows, MacOS are not included.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.monad-extras) (hsPkgs.transformers) ];
        pkgconfig = [ (pkgconfPkgs."cairo") ];
        build-tools = [ ((hsPkgs.buildPackages).c2hs) ];
        };
      };
    }