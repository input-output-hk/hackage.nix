{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "pi-calculus";
        version = "0.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "will.derenzymartin@gmail.com";
      author = "Will de Renzy-Martin";
      homepage = "";
      url = "";
      synopsis = "Applied pi-calculus compiler";
      description = "Phi - A compiler for the applied pi-calculus. Very rough around the edges.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "phi" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.network)
            (hsPkgs.HTTP)
          ];
        };
      };
    };
  }