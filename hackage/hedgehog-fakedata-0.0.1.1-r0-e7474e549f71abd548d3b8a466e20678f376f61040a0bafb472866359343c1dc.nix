{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "hedgehog-fakedata"; version = "0.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 Matt Parsons";
      maintainer = "parsonsmatt@gmail.com";
      author = "Matt Parsons";
      homepage = "https://github.com/parsonsmatt/hedgehog-fakedata#readme";
      url = "";
      synopsis = "Use 'fakedata' with 'hedgehog'";
      description = "Please see the README on GitHub at <https://github.com/parsonsmatt/hedgehog-fakedata#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."fakedata" or ((hsPkgs.pkgs-errors).buildDepError "fakedata"))
          (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        buildable = true;
        };
      tests = {
        "specs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hedgehog-fakedata" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog-fakedata"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."fakedata" or ((hsPkgs.pkgs-errors).buildDepError "fakedata"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }