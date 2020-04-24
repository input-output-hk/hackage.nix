{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "linear-grammar"; version = "0.0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A simple grammar for building linear equations and inclusive inequalities.";
      description = "This library provides some simple tools for building abstract syntax trees,\nrepresenting linear equations and (inclusive) inequalities. As an example:\n\n> 12x + 3y - 4z + 12 <= 43x - 7b + 8q\n\nWould look like...\n\n> f = (12 :: Double) .*. EVar \"x\" .+.\n>     (3 :: Double) .*. EVar \"y\" .+.\n>     (-4 :: Double) .*. EVar \"z\" .+.\n>     ELit 12\n>     .<=.\n>     (43 :: Double) .*. EVar \"x\" .+.\n>     (-7 :: Double) .*. EVar \"b\" .+.\n>     (8 :: Double) .*. EVar \"q\"\n\nI've added some overloading functionality, to help ease the verbosity of the\nabove statements - an @IsString@ instance, and some other utilities. To pack\nthe equation into <https://en.wikipedia.org/wiki/Linear_equation#General_.28or_standard.29_form standard form>,\nuse the @sandardForm@ function:\n\n> stdF = standardForm f";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }