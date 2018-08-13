{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "PrimitiveArray";
        version = "0.0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2010";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.tbi.univie.ac.at/~choener/Haskell/";
      url = "";
      synopsis = "Unboxed, multidimensional arrays based on the primitive\npackage.";
      description = "Provides unboxed multidimensional tables with a small\ninterface. Comes with an instance for Ix keys.\n\n* haddock should work now";
      buildType = "Simple";
    };
    components = {
      "PrimitiveArray" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.primitive)
        ];
      };
    };
  }