{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "boop"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Tobias Dammers";
      maintainer = "tdammers@gmail.com";
      author = "Tobias Dammers";
      homepage = "https://github.com/tdammers/boop";
      url = "";
      synopsis = "OOP primitives for Haskell";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "boop-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."boop" or ((hsPkgs.pkgs-errors).buildDepError "boop"))
            ];
          buildable = true;
          };
        };
      };
    }