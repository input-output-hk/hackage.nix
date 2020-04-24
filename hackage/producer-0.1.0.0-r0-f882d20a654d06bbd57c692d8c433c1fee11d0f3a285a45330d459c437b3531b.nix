{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "producer"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Eric Torreborre";
      maintainer = "etorreborre@yahoo.com";
      author = "Eric Torreborre";
      homepage = "https://github.com/etorreborre/producer-hs#readme";
      url = "";
      synopsis = "Simple streaming datatype";
      description = "Producer is a simple streaming datatype, making that only a limited number\nof elements are ever kept in memory. As such it is more a library showing the use of\nsimple functional programming to do streaming rather than a production library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "producer-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."producer" or ((hsPkgs.pkgs-errors).buildDepError "producer"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-auto" or ((hsPkgs.pkgs-errors).buildDepError "tasty-auto"))
            (hsPkgs."checkers" or ((hsPkgs.pkgs-errors).buildDepError "checkers"))
            ];
          buildable = true;
          };
        };
      };
    }