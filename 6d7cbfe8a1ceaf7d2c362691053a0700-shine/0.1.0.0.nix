{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "shine";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "(c) 2016 Francesco Gazzetta";
      maintainer = "Francesco Gazzetta <francygazz@gmail.com>";
      author = "Francesco Gazzetta";
      homepage = "https://github.com/fgaz/shine";
      url = "";
      synopsis = "Declarative graphics for the browser using GHCJS";
      description = "Shine wraps javascript's drawing functions in a declarative API.\nHeavily inspired by Gloss.\n\nRead the README for an overview of the library.";
      buildType = "Simple";
    };
    components = {
      "shine" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghcjs-dom)
          (hsPkgs.ghcjs-prim)
          (hsPkgs.keycode)
          (hsPkgs.time)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "test-shine" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghcjs-dom)
            (hsPkgs.shine)
          ];
        };
      };
    };
  }