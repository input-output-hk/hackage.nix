{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "unit"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 Andrew Mohrland";
      maintainer = "cxfreeio@gmail.com";
      author = "Andrew Mohrland";
      homepage = "http://github.com/cxfreeio/unit#readme";
      url = "";
      synopsis = "Aliases for ().";
      description = "Please see README.md";
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