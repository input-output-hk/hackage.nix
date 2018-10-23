{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "vect-floating";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2011 Balazs Komuves (c) 2014 Charles Durham";
      maintainer = "Charles Durham <cpdurham@gmail.com>";
      author = "Balazs Komuves, Charles Durham";
      homepage = "http://github.com/cdurham/vect-floating";
      url = "";
      synopsis = "A low-dimensional linear algebra library, operating on the Floating typeclass";
      description = "A low-dimensional (2, 3, 4 and Quaternions) linear algebra library,\nwith lots of useful functions. Forked from vect library at <http://hackage.haskell.org/package/vect>\nby Balazs Komuves in order to use Floating typeclass instead of Float, Double.\nWill be compatible with accelerate in a future package.\nMany thanks to Balazs Komuves.";
      buildType = "Simple";
    };
    components = {
      "vect-floating" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
        ];
      };
    };
  }