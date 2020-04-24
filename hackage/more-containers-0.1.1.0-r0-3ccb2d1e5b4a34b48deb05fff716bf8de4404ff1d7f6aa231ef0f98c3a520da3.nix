{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "more-containers"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "2017 Matthieu Monsch";
      maintainer = "matthieu.monsch@gmail.com";
      author = "Matthieu Monsch";
      homepage = "https://github.com/mtth/more-containers#readme";
      url = "";
      synopsis = "A few more collections";
      description = "Please see the README on Github at https://github.com/mtth/more-containers";
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
        "more-containers-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."more-containers" or ((hsPkgs.pkgs-errors).buildDepError "more-containers"))
            ];
          buildable = true;
          };
        };
      };
    }