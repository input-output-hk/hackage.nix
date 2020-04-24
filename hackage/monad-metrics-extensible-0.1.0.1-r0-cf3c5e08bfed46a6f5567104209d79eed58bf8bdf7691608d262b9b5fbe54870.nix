{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "monad-metrics-extensible"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Georg Rudoy";
      maintainer = "0xd34df00d@gmail.com";
      author = "Georg Rudoy";
      homepage = "https://github.com/0xd34df00d/monad-metrics-extensible#readme";
      url = "";
      synopsis = "An extensible and type-safe wrapper around EKG metrics";
      description = "Please see the README on GitHub at <https://github.com/0xd34df00d/monad-metrics-extensible#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."dependent-map" or ((hsPkgs.pkgs-errors).buildDepError "dependent-map"))
          (hsPkgs."dependent-sum" or ((hsPkgs.pkgs-errors).buildDepError "dependent-sum"))
          (hsPkgs."ekg" or ((hsPkgs.pkgs-errors).buildDepError "ekg"))
          (hsPkgs."ekg-core" or ((hsPkgs.pkgs-errors).buildDepError "ekg-core"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "monad-metrics-extensible-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."dependent-map" or ((hsPkgs.pkgs-errors).buildDepError "dependent-map"))
            (hsPkgs."dependent-sum" or ((hsPkgs.pkgs-errors).buildDepError "dependent-sum"))
            (hsPkgs."ekg" or ((hsPkgs.pkgs-errors).buildDepError "ekg"))
            (hsPkgs."ekg-core" or ((hsPkgs.pkgs-errors).buildDepError "ekg-core"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."monad-metrics-extensible" or ((hsPkgs.pkgs-errors).buildDepError "monad-metrics-extensible"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }