{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "threaded"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Athan Clark";
      maintainer = "athan.clark@gmail.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/threaded#readme";
      url = "";
      synopsis = "Manage concurrently operating threads without having to spark them";
      description = "Please see the README on GitHub at <https://github.com/athanclark/threaded#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."chan" or ((hsPkgs.pkgs-errors).buildDepError "chan"))
          (hsPkgs."extractable-singleton" or ((hsPkgs.pkgs-errors).buildDepError "extractable-singleton"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."monad-control-aligned" or ((hsPkgs.pkgs-errors).buildDepError "monad-control-aligned"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."tmapmvar" or ((hsPkgs.pkgs-errors).buildDepError "tmapmvar"))
          ];
        buildable = true;
        };
      tests = {
        "threaded-test" = {
          depends = [
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."chan" or ((hsPkgs.pkgs-errors).buildDepError "chan"))
            (hsPkgs."extractable-singleton" or ((hsPkgs.pkgs-errors).buildDepError "extractable-singleton"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."monad-control-aligned" or ((hsPkgs.pkgs-errors).buildDepError "monad-control-aligned"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."threaded" or ((hsPkgs.pkgs-errors).buildDepError "threaded"))
            (hsPkgs."tmapmvar" or ((hsPkgs.pkgs-errors).buildDepError "tmapmvar"))
            ];
          buildable = true;
          };
        };
      };
    }