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
        version = "0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Julian Sutherland (julian.sutherland10@imperial.ac.uk)";
      author = "Julian Sutherland";
      homepage = "https://github.com/Julek";
      url = "";
      synopsis = "Lock free Treiber stack";
      description = "An implementation of Treiber stacks, a lock free stack. Works with any monad that has atomically modificable references.\n0.0.2: Removed debug code accidentally left in in version 0.0.1.\n0.0.3: Added specializations of the TreiberStack data structure to the IO and STM monads (forgotten to export in 0.0.2).\n0.0.4: Modification to remove unrequired Eq class requirement and changed broken specialize pragma.";
      buildType = "Simple";
    };
    components = {
      "Treiber" = {
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