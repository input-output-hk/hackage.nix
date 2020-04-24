{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hedgehog-checkers-lens"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017, Chris Allen";
      maintainer = "cma@bitemyapp.com";
      author = "Chris Allen";
      homepage = "https://github.com/bitemyapp/hedgehog-checkers#readme";
      url = "";
      synopsis = "";
      description = "hedgehog-checkers-lens provides the various lens, prism, setter, and traversal laws as ready-to-use properties.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
          (hsPkgs."hedgehog-checkers" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog-checkers"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."hedgehog-checkers" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog-checkers"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."hedgehog-checkers-lens" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog-checkers-lens"))
            ];
          buildable = true;
          };
        };
      };
    }