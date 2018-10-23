{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0.1";
      identifier = {
        name = "type-digits";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Nicolas Frisby <nicolas.frisby@gmail.com>";
      author = "Nicolas Frisby <nicolas.frisby@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "/Arbitrary/ type-level digits";
      description = "Arbitrary ype-level digits, for when the radix itself doesn't\nactually matter. It's currently base-128, because that seemed to best\nexpedite the compilation of the modules using this package. Please let me\nknow what you find if you experiment with this.\n'Type.Digits.radix' is the (arbitrary) radix. 'Type.Digits.digit' computes\nthe 'NameG' of a digit from its value (assuming its less than the\nradix). Combinators are provided to compute a full type-level numeral from\nvalues (potentially) larger than the radix.";
      buildType = "Simple";
    };
    components = {
      "type-digits" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.type-spine)
          (hsPkgs.tagged-th)
        ];
      };
    };
  }