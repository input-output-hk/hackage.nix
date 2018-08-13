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
      specVersion = "1.4";
      identifier = {
        name = "YACPong";
        version = "0.1";
      };
      license = "MIT";
      copyright = "Copyright (c) 2010 Korcan Hussein";
      maintainer = "korcan_h@hotmail.com";
      author = "Korcan Hussein";
      homepage = "http://github.com/snkkid/YACPong";
      url = "";
      synopsis = "Yet Another Pong Clone using SDL.";
      description = "Yet Another Pong Clone using SDL.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "YACPong" = {
          depends  = [
            (hsPkgs.SDL)
            (hsPkgs.SDL-image)
            (hsPkgs.SDL-mixer)
            (hsPkgs.SDL-ttf)
            (hsPkgs.base)
            (hsPkgs.data-accessor-transformers)
            (hsPkgs.fclabels)
            (hsPkgs.monads-fd)
            (hsPkgs.random)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }