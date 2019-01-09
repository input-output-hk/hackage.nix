{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "gloss-examples"; version = "1.0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "gloss@ouroborus.net";
      author = "Ben Lippmeier";
      homepage = "http://trac.haskell.org/gloss";
      url = "";
      synopsis = "Examples using the gloss library";
      description = "Examples using the gloss graphics library.\nA mixed bag of fractals, particle simulations and cellular automata.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gloss-easy" = { depends = [ (hsPkgs.base) (hsPkgs.gloss) ]; };
        "gloss-clock" = { depends = [ (hsPkgs.base) (hsPkgs.gloss) ]; };
        "gloss-eden" = {
          depends = [ (hsPkgs.base) (hsPkgs.gloss) (hsPkgs.random) ];
          };
        "gloss-flake" = { depends = [ (hsPkgs.base) (hsPkgs.gloss) ]; };
        "gloss-hello" = { depends = [ (hsPkgs.base) (hsPkgs.gloss) ]; };
        "gloss-lifespan" = {
          depends = [ (hsPkgs.base) (hsPkgs.gloss) (hsPkgs.random) ];
          };
        "gloss-styrene" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.gloss)
            (hsPkgs.containers)
            (hsPkgs.ghc-prim)
            ];
          };
        "gloss-tree" = { depends = [ (hsPkgs.base) (hsPkgs.gloss) ]; };
        "gloss-zen" = { depends = [ (hsPkgs.base) (hsPkgs.gloss) ]; };
        "gloss-machina" = { depends = [ (hsPkgs.base) (hsPkgs.gloss) ]; };
        "gloss-conway" = {
          depends = [ (hsPkgs.base) (hsPkgs.gloss) (hsPkgs.vector) ];
          };
        };
      };
    }