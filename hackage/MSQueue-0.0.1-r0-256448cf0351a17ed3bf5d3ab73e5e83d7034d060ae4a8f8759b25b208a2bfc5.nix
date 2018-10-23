{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "MSQueue";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Julian Sutherland (julian.sutherland10@imperial.ac.uk)";
      author = "Julian Sutherland";
      homepage = "https://github.com/Julek";
      url = "";
      synopsis = "Michael-Scott queue.";
      description = "An implementation of a Michael-Scott Lock-Free queues.";
      buildType = "Simple";
    };
    components = {
      "MSQueue" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.monad-loops)
          (hsPkgs.ref-mtl)
          (hsPkgs.stm)
        ];
      };
    };
  }