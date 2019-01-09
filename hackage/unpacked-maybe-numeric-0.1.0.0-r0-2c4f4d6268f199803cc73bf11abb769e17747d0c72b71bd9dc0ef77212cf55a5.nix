{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "unpacked-maybe-numeric"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com, chessai1996@gmail.com";
      author = "Andrew Martin, chessai";
      homepage = "https://github.com/andrewthad/unpacked-maybe-numeric#readme";
      url = "";
      synopsis = "maybes of numeric values with fewer indirections";
      description = "This library provides one `Maybe` type per the usual numeric types:\nFloat, Double, Complex {Float|Double}, Int{|8|16|32|64}, and Word{|8|16|32|64}\n\nAll of the numeric types inside the `Maybe` are unboxed, while the `Maybe` value\nitself is represented as an Unboxed Sum (though for sub-machine-size Int/Word values,\nthe `Maybe` is just a wrapper around the underlying type, with out-of-bounds corresponding\nto the 'Nothing' value. Thus, the usage of these constructors is unsafe, as this is only\nchecked internally).";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.primitive) ]; };
      tests = {
        "laws" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.quickcheck-classes)
            (hsPkgs.unpacked-maybe-numeric)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }