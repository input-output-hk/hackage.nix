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
      specVersion = "1.2";
      identifier = {
        name = "QIO";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Alexander S. Green";
      homepage = "http://www.cs.nott.ac.uk/~asg/QIO/";
      url = "";
      synopsis = "The Quantum IO Monad is a library for defining quantum computations in Haskell";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.haskell98)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.old-time)
        ];
      };
    };
  }