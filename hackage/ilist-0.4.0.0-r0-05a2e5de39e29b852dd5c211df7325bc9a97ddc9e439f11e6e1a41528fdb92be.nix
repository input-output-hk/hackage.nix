{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "ilist"; version = "0.4.0.0"; };
      license = "MPL-2.0";
      copyright = "2016-2019 Artyom Kazak (BSD-3-Clause)\n2019-2020 Kowainik (MPL-2.0)";
      maintainer = "Kowainik <xrom.xkov@gmail.com>";
      author = "Artyom";
      homepage = "http://github.com/kowainik/ilist";
      url = "";
      synopsis = "Optimised list functions for doing index-related things";
      description = "Optimised list functions for doing index-related things. They're\nfaster than common idioms in all cases, they avoid\n<https://ghc.haskell.org/trac/ghc/ticket/12620 space leaks>, and\nsometimes they fuse better as well.";
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
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."ilist" or ((hsPkgs.pkgs-errors).buildDepError "ilist"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."ilist" or ((hsPkgs.pkgs-errors).buildDepError "ilist"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."loop" or ((hsPkgs.pkgs-errors).buildDepError "loop"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }