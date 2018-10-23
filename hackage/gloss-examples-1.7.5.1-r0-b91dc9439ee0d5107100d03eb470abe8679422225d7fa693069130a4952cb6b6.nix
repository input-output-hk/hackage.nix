{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "gloss-examples";
        version = "1.7.5.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "benl@ouroborus.net";
      author = "Ben Lippmeier";
      homepage = "http://gloss.ouroborus.net";
      url = "";
      synopsis = "Examples using the gloss library";
      description = "Examples using the gloss graphics library.\nA mixed bag of fractals, particle simulations and cellular automata.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "gloss-bitmap" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
            (hsPkgs.bytestring)
            (hsPkgs.bmp)
          ];
        };
        "gloss-boids" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
          ];
        };
        "gloss-clock" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
          ];
        };
        "gloss-conway" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
            (hsPkgs.vector)
          ];
        };
        "gloss-draw" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
          ];
        };
        "gloss-easy" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
          ];
        };
        "gloss-eden" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
            (hsPkgs.random)
          ];
        };
        "gloss-flake" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
          ];
        };
        "gloss-gameevent" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
          ];
        };
        "gloss-hello" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
          ];
        };
        "gloss-lifespan" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
            (hsPkgs.random)
          ];
        };
        "gloss-machina" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
          ];
        };
        "gloss-occlusion" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
          ];
        };
        "gloss-styrene" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
            (hsPkgs.containers)
            (hsPkgs.ghc-prim)
          ];
        };
        "gloss-tree" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
          ];
        };
        "gloss-visibility" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
            (hsPkgs.vector)
          ];
        };
        "gloss-zen" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
          ];
        };
        "gloss-crystal" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
            (hsPkgs.gloss-raster)
          ];
        };
        "gloss-ray" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
            (hsPkgs.gloss-raster)
          ];
        };
        "gloss-pulse" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
            (hsPkgs.gloss-raster)
          ];
        };
        "gloss-wave" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
            (hsPkgs.gloss-raster)
            (hsPkgs.vector)
            (hsPkgs.ghc-prim)
          ];
        };
        "gloss-fluid" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gloss)
            (hsPkgs.vector)
            (hsPkgs.repa)
            (hsPkgs.repa-io)
            (hsPkgs.repa-algorithms)
            (hsPkgs.ghc-prim)
          ];
        };
        "gloss-snow" = {};
        "gloss-mandel" = {};
      };
    };
  }