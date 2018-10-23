{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "gmap";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jamiiecb (google mail)";
      author = "Jamie Brandon, Adrian Hey";
      homepage = "";
      url = "";
      synopsis = "Composable maps and generic tries.";
      description = "Provides typeclass for and several implementations of composable maps and generic tries.\nOrdMap is roughly equivalent to Data.Map .\nListMap, EitherMap, MaybeMap, TupleMap and EnumMap allow you to break down the corresponding types.\nInjectKeys is the easiest way to define tries on your own types, see EitherMap for a simple example.\nChoiceMap and TupleMap correspond to sum and product types, respectively.\nThe type-level syntax for creating maps is currently unwieldy. This will improve significantly in the next version.";
      buildType = "Simple";
    };
    components = {
      "gmap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.array)
          (hsPkgs.COrdering)
          (hsPkgs.AvlTree)
          (hsPkgs.random)
        ];
      };
    };
  }