{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "unit"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Andrew Mohrland";
      maintainer = "amohrland@gmail.com";
      author = "Andrew Mohrland";
      homepage = "https://github.com/amohrland/haskell-unit";
      url = "";
      synopsis = "Aliases for `()`.";
      description = "Aliases for `()`.";
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
        "unit-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."unit" or ((hsPkgs.pkgs-errors).buildDepError "unit"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }