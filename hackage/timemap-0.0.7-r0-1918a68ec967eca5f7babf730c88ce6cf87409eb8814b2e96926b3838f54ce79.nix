{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "timemap"; version = "0.0.7"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018 Athan Clark";
      maintainer = "athan.clark@localcooking.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/timemap#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on Github at <https://github.com/githubuser/timemap#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."focus" or ((hsPkgs.pkgs-errors).buildDepError "focus"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."list-t" or ((hsPkgs.pkgs-errors).buildDepError "list-t"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."stm-containers" or ((hsPkgs.pkgs-errors).buildDepError "stm-containers"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "timemap-test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."focus" or ((hsPkgs.pkgs-errors).buildDepError "focus"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."list-t" or ((hsPkgs.pkgs-errors).buildDepError "list-t"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."stm-containers" or ((hsPkgs.pkgs-errors).buildDepError "stm-containers"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."timemap" or ((hsPkgs.pkgs-errors).buildDepError "timemap"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "timemap-bench1" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."focus" or ((hsPkgs.pkgs-errors).buildDepError "focus"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."list-t" or ((hsPkgs.pkgs-errors).buildDepError "list-t"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."stm-containers" or ((hsPkgs.pkgs-errors).buildDepError "stm-containers"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."timemap" or ((hsPkgs.pkgs-errors).buildDepError "timemap"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        "timemap-bench2" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."focus" or ((hsPkgs.pkgs-errors).buildDepError "focus"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."list-t" or ((hsPkgs.pkgs-errors).buildDepError "list-t"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."stm-containers" or ((hsPkgs.pkgs-errors).buildDepError "stm-containers"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."timemap" or ((hsPkgs.pkgs-errors).buildDepError "timemap"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }