{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "linear-vect";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2011 Balazs Komuves (c) 2014 Charles Durham (c) 2014 capsjac";
      maintainer = "capsjac <capsjac at gmail dot com>";
      author = "capsjac <capsjac at gmail dot com>";
      homepage = "https://github.com/capsjac/linear-vect";
      url = "";
      synopsis = "A low-dimensional linear algebra library, operating on the Num typeclass";
      description = "A low-dimensional (2, 3, 4 and Quaternions) linear algebra library,\nwith lots of useful functions. Forked from vect library at <http://hackage.haskell.org/package/vect>\nby Balazs Komuves in order to use Num typeclass instead of Float, Double, Floating.\nMany thanks to Balazs Komuves and Charles Durham.";
      buildType = "Simple";
    };
    components = {
      "linear-vect" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
        ];
      };
    };
  }