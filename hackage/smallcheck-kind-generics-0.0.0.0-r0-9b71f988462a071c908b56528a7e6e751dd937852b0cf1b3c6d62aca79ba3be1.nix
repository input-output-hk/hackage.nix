{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "smallcheck-kind-generics"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 M Farkas-Dyck";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "https://github.com/strake/smallcheck-kind-generics.hs";
      url = "";
      synopsis = "See README for more info";
      description = "See README for more info";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."kind-generics" or ((hsPkgs.pkgs-errors).buildDepError "kind-generics"))
          (hsPkgs."kind-generics-th" or ((hsPkgs.pkgs-errors).buildDepError "kind-generics-th"))
          (hsPkgs."smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."smallcheck-kind-generics" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck-kind-generics"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gauge" or ((hsPkgs.pkgs-errors).buildDepError "gauge"))
            (hsPkgs."smallcheck-kind-generics" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck-kind-generics"))
            ];
          buildable = true;
          };
        };
      };
    }