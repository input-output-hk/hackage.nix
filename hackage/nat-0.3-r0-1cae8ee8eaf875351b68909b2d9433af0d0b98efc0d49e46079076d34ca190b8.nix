{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "nat";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jan Christiansen <info@monoid-it.de>";
      author = "Jan Christiansen";
      homepage = "";
      url = "";
      synopsis = "Lazy binary natural numbers";
      description = "Implementation of natural numbers and integers by a\nbinary representation. All functions are supposed to\nbe as non-strict as possible. Furthermore the\nimplementation is supposed to be reasonable efficient\n(in comparison to peano numbers). This implementation\nis inspired by a similar approach in the functional\nlogic programming language Curry.";
      buildType = "Simple";
    };
    components = {
      "nat" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }