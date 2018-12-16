{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { demo = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "gridland";
        version = "0.1.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "https://github.com/jxv";
      author = "Joe Vargas";
      homepage = "";
      url = "";
      synopsis = "Grid-based multimedia engine";
      description = "Learn Haskell by drawing sprites and playing music and sound effects.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.SDL)
          (hsPkgs.SDL-image)
          (hsPkgs.SDL-mixer)
          (hsPkgs.SDL-gfx)
          (hsPkgs.astar)
          (hsPkgs.containers)
          (hsPkgs.tuple)
          (hsPkgs.random)
          (hsPkgs.grid)
          (hsPkgs.htiled)
          (hsPkgs.vector)
          (hsPkgs.mtl)
          (hsPkgs.array)
          (hsPkgs.safe)
        ];
      };
      exes = {
        "demo" = {
          depends = pkgs.lib.optionals (flags.demo) [
            (hsPkgs.base)
            (hsPkgs.gridland)
          ];
        };
      };
    };
  }