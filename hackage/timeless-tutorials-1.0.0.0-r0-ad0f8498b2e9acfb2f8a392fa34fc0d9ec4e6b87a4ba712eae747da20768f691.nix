{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "timeless-tutorials"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "BSD3";
      maintainer = "rongcuid@outlook.com";
      author = "Rongcui Dong";
      homepage = "https://github.com/carldong/timeless-tutorials#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."timeless" or ((hsPkgs.pkgs-errors).buildDepError "timeless"))
          ];
        buildable = true;
        };
      exes = {
        "Tutorial1" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."timeless-tutorials" or ((hsPkgs.pkgs-errors).buildDepError "timeless-tutorials"))
            ];
          buildable = true;
          };
        };
      };
    }