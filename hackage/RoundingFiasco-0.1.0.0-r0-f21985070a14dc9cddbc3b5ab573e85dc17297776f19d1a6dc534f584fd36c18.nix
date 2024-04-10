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
      specVersion = "3.0";
      identifier = { name = "RoundingFiasco"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "paul.dennis2@gmx.de";
      author = "Paul Dennis";
      homepage = "https://gitlab.com/pauldennis/rounding-fiasco-hackage-package/-/tree/master/rounding-fiasco-hackage-package/processing/RoundingFiasco";
      url = "";
      synopsis = "rounding variants floor, ceil and truncate for floating point operations +-*/√…";
      description = "There is an exact definition for `+-*/√` over the real numbers in mathematics.\nHowever for performant, flexible and ergonomic numerical computations one ought\nto restrict oneself only having a finite subset of rational numbers. The most\ncommon data type for such use cases is the single and double floating point\nformat.\n\nCombining two real floating point numbers by an operator yield a mathematical\nand exactly defined result. This exact result might not be representable as a\nfloating point number. One has to round. The most common way of rounding is\nrounding to the nearest representable float. This rounding variant helps to\nminimize the accumulation of rounding errors over several floating point\noperations.\n\nOther rounding variants floor, ceil and truncate are useful for computing\nerror bounds of chained floating point instructions. floor chooses the lesser\nneighbor of the representable results. ceil chooses the greater float. truncate\nchooses the float that is closest to zero.\n\nThis library implements the floating point instructions in pure hasekell. They\ndo not use `c++` with `fegetround` for example. That way they can be used in\nthe WebAssembly backend of ghc since WebAssembly does neither support rounding\nvariants nor `fegetround`.\n\nThis module is supposed to expose the fastest possible clean interface of\nrounding variants. Should there ever be some compiler intrinsics for rounding\nvariants then these shall be used in a future version.\n\nInternally the module heavily utilizes the `Rational` data type. First the\noperations result is calculated twice. One time exact with the help of\n`Rational`. Then there is also a round-to-nearest-even-on-tie result\ncalculated. After that both numbers are compared to investigate if the\nround-to-nearest-even-on-tie result was rounded in the correct direction by\nchance. Should that not be the case the other neighbor is determined and\nreturned.\n\nEvery combination of number type (`Float`, `Double`) and operator\n(`+`,`-`,`*`,`/`,`√`,`id`) is exported separately. The exported functions are\nsupposed to be useful for interval arithmetic.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "RoundingFiasco-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."RoundingFiasco" or (errorHandler.buildDepError "RoundingFiasco"))
            ];
          buildable = true;
          };
        };
      };
    }