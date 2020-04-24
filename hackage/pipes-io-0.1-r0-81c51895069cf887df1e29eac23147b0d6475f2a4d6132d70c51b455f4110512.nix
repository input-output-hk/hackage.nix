{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pipes-io"; version = "0.1"; };
      license = "Apache-2.0";
      copyright = "Copyright 2016 Yin Guanhao <yinguanhao@gmail.com>";
      maintainer = "Yin Guanhao <yinguanhao@gmail.com>";
      author = "Yin Guanhao";
      homepage = "";
      url = "";
      synopsis = "Stateful IO streams based on pipes";
      description = "`pipes-io` allows you to use pipes and `Parser`s more easily in the\nIO monad, providing a interface similar to that of `io-streams`.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
          (hsPkgs."pipes-parse" or ((hsPkgs.pkgs-errors).buildDepError "pipes-parse"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pipes-io" or ((hsPkgs.pkgs-errors).buildDepError "pipes-io"))
            (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }