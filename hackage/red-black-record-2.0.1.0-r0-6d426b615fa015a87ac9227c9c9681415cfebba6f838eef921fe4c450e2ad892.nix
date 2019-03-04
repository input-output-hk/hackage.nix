{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "red-black-record"; version = "2.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diaz_carrete@yahoo.com";
      author = "Daniel Diaz";
      homepage = "";
      url = "";
      synopsis = "Extensible records and variants indexed by a type-level Red-Black tree.";
      description = "A library that provides extensible records and variants,\nboth indexed by a type-level red-black tree that maps\nSymbol keys to value Types.\n\nThe keys correspond to fields\nnames in records, and to branch names in variants.\n\nEach value type in a field or branch comes wrapped in a\ntype constructor of kind @Type -> Type@.\n\nThe records and variants can be converted to and from\nregular Haskell datatypes; also to and from the unlabelled\nn-ary products and sums of the @sop-core@ package.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.sop-core) ]; };
      sublibs = {
        "demoted" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.sop-core)
            (hsPkgs.red-black-record)
            ];
          };
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.sop-core)
            (hsPkgs.red-black-record)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.profunctors)
            (hsPkgs.doctest)
            ];
          };
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.sop-core)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.red-black-record)
            (hsPkgs.demoted)
            ];
          };
        };
      };
    }