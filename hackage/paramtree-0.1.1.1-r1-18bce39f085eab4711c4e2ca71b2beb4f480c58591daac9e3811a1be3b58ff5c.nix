{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "paramtree"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2017-2019 Merijn Verstraaten";
      maintainer = "Merijn Verstraaten <merijn@inconsistent.nl>";
      author = "Merijn Verstraaten";
      homepage = "https://github.com/merijn/paramtree";
      url = "";
      synopsis = "Generate labelled test/benchmark trees from sets of parameters";
      description = "Easily generate a labelled tree of tests/benchmarks from a generation\nfunction and sets of parameters to use for each of that functions\narguments. Example usecases include criterion benchmark trees or tasty test\ntrees.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."paramtree" or ((hsPkgs.pkgs-errors).buildDepError "paramtree"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-golden" or ((hsPkgs.pkgs-errors).buildDepError "tasty-golden"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            ];
          buildable = true;
          };
        };
      };
    }