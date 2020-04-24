{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "applicative-parsec"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright 2013-2015 Karl Voelker";
      maintainer = "aparsec@karlv.net";
      author = "Karl Voelker";
      homepage = "https://www.github.com/ktvoelker/AParsec";
      url = "";
      synopsis = "An applicative parser combinator library";
      description = "The goal of this library is to take advantage of the power of applicatives to\nprovide not only a parser combinator library, but grammar analysis and\nvalidation tools. Right now, those tools are minimal, but do include a BNF\ngenerator.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."applicative-parsec" or ((hsPkgs.pkgs-errors).buildDepError "applicative-parsec"))
            ];
          buildable = true;
          };
        };
      };
    }