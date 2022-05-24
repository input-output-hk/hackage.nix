{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "unpacked-maybe-numeric"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com, chessai1996@gmail.com";
      author = "Andrew Martin, chessai";
      homepage = "https://github.com/andrewthad/unpacked-maybe-numeric#readme";
      url = "";
      synopsis = "maybes of numeric values with fewer indirections";
      description = "This library provides one `Maybe` type per the usual numeric types:\nFloat, Double, Complex {Float|Double}, Int{8|16|32|64}, and Word{8|16|32|64|128}\n\nAll of the numeric types inside the `Maybe` are unboxed, while the `Maybe` value\nitself is represented as an Unboxed Sum. However, for sub-machine-size Int/Word values,\nthe `Maybe` is just a wrapper around the underlying type, with out-of-bounds corresponding\nto the `Nothing` value. Thus, the use of these constructors is unsafe, as this is only\nchecked internally.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."wide-word" or (errorHandler.buildDepError "wide-word"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unpacked-maybe-numeric" or (errorHandler.buildDepError "unpacked-maybe-numeric"))
            ];
          buildable = true;
          };
        "laws" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            (hsPkgs."unpacked-maybe-numeric" or (errorHandler.buildDepError "unpacked-maybe-numeric"))
            ];
          buildable = true;
          };
        };
      };
    }