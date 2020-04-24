{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "more-containers"; version = "0.2.1.1"; };
      license = "MIT";
      copyright = "2017-2019 Matthieu Monsch";
      maintainer = "mtth@apache.org";
      author = "Matthieu Monsch";
      homepage = "https://github.com/mtth/more-containers";
      url = "";
      synopsis = "A few more collections";
      description = "https://github.com/mtth/more-containers";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "more-containers-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."more-containers" or ((hsPkgs.pkgs-errors).buildDepError "more-containers"))
            ];
          buildable = true;
          };
        };
      };
    }