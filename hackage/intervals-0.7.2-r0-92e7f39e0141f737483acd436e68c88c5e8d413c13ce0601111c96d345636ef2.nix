{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test-doctests = true; herbie = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "intervals"; version = "0.7.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ekmett@gmail.com";
      author = "Edward Kmett";
      homepage = "http://github.com/ekmett/intervals";
      url = "";
      synopsis = "Interval Arithmetic";
      description = "A 'Numeric.Interval.Interval' is a closed, convex set of floating point values.\n\nWe do not control the rounding mode of the end points of the interval when\nusing floating point arithmetic, so be aware that in order to get precise\ncontainment of the result, you will need to use an underlying type with\nboth lower and upper bounds like 'CReal'";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."distributive" or ((hsPkgs.pkgs-errors).buildDepError "distributive"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.4") (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))) ++ (pkgs.lib).optional (flags.herbie) (hsPkgs."HerbiePlugin" or ((hsPkgs.pkgs-errors).buildDepError "HerbiePlugin"));
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = (pkgs.lib).optionals (!(!flags.test-doctests || compiler.isGhc && (compiler.version).ge "8")) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            ];
          buildable = if !flags.test-doctests || compiler.isGhc && (compiler.version).ge "8"
            then false
            else true;
          };
        };
      };
    }