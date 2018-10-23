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
        name = "Treiber";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Julian Sutherland (julian.sutherland10@imperial.ac.uk)";
      author = "Julian Sutherland";
      homepage = "https://github.com/Julek";
      url = "";
      synopsis = "Lock free Treiber stack";
      description = "An implementation of Treiber stacks, a lock free stack. Works with any monad that has atomically modificable references.";
      buildType = "Simple";
    };
    components = {
      "Treiber" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.monad-loops)
          (hsPkgs.ref-mtl)
        ];
      };
    };
  }