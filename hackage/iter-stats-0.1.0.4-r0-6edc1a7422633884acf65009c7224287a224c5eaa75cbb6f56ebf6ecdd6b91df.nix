{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "iter-stats"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "John W. Lato, 2012";
      maintainer = "jwlato@gmail.com";
      author = "John W. Lato";
      homepage = "https://github.com/JohnLato/iter-stats";
      url = "";
      synopsis = "iteratees for statistical processing";
      description = "efficient statistical values of data streams";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."heap" or ((hsPkgs.pkgs-errors).buildDepError "heap"))
          (hsPkgs."iteratee" or ((hsPkgs.pkgs-errors).buildDepError "iteratee"))
          (hsPkgs."ListLike" or ((hsPkgs.pkgs-errors).buildDepError "ListLike"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "iter-stats-tests" = {
          depends = [
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."statistics" or ((hsPkgs.pkgs-errors).buildDepError "statistics"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."heap" or ((hsPkgs.pkgs-errors).buildDepError "heap"))
            (hsPkgs."iteratee" or ((hsPkgs.pkgs-errors).buildDepError "iteratee"))
            (hsPkgs."ListLike" or ((hsPkgs.pkgs-errors).buildDepError "ListLike"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }