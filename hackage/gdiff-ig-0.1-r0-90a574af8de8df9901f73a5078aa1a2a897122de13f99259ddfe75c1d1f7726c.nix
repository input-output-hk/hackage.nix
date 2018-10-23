{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "gdiff-ig";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Universiteit Utrecht";
      maintainer = "generics@haskell.org";
      author = "José Pedro Magalhães";
      homepage = "http://www.cs.uu.nl/wiki/GenericProgramming/InstantGenerics";
      url = "";
      synopsis = "Generic diff for the instant-generics library";
      description = "The generic diff of <http://hackage.haskell.org/package/gdiff> adapted to the\n<http://hackage.haskell.org/package/instant-generics> library.\n\nThe Test.hs file (included in the package) shows an example of use of this\nlibrary.";
      buildType = "Simple";
    };
    components = {
      "gdiff-ig" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.instant-generics)
          (hsPkgs.array)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }