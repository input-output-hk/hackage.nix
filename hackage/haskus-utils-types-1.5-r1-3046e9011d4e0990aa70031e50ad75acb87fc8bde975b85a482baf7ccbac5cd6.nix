{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.20";
      identifier = { name = "haskus-utils-types"; version = "1.5"; };
      license = "BSD-3-Clause";
      copyright = "Sylvain Henry 2020";
      maintainer = "sylvain@haskus.fr";
      author = "Sylvain Henry";
      homepage = "https://www.haskus.org";
      url = "";
      synopsis = "Haskus types utility modules";
      description = "Haskus types utility modules (Nat, List, etc.)";
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
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }