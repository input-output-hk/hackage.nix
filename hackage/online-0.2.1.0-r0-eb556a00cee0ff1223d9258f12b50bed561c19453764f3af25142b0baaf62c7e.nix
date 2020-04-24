{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "online"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/online#readme";
      url = "";
      synopsis = "online statistics";
      description = "transformation of statistics to online algorithms";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."foldl" or ((hsPkgs.pkgs-errors).buildDepError "foldl"))
          (hsPkgs."numhask" or ((hsPkgs.pkgs-errors).buildDepError "numhask"))
          (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
          (hsPkgs."tdigest" or ((hsPkgs.pkgs-errors).buildDepError "tdigest"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "vector-algorithms"))
          ];
        buildable = true;
        };
      exes = {
        "online-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."foldl" or ((hsPkgs.pkgs-errors).buildDepError "foldl"))
            (hsPkgs."formatting" or ((hsPkgs.pkgs-errors).buildDepError "formatting"))
            (hsPkgs."numhask" or ((hsPkgs.pkgs-errors).buildDepError "numhask"))
            (hsPkgs."online" or ((hsPkgs.pkgs-errors).buildDepError "online"))
            (hsPkgs."optparse-generic" or ((hsPkgs.pkgs-errors).buildDepError "optparse-generic"))
            (hsPkgs."perf" or ((hsPkgs.pkgs-errors).buildDepError "perf"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."online" or ((hsPkgs.pkgs-errors).buildDepError "online"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            ];
          buildable = true;
          };
        };
      };
    }