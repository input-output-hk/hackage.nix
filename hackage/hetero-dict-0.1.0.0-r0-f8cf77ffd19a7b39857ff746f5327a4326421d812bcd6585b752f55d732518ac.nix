{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hetero-dict"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2014-2015 Hirotomo Moriwaki, 2016 Winterland";
      maintainer = "drkoster@qq.com";
      author = "Hirotomo Moriwaki <philopon.dependence@gmail.com>,\nWinterland <drkoster@qq.com>";
      homepage = "";
      url = "";
      synopsis = "Fast read-only heterogeneous data structures";
      description = "Fast read-only heterogeneous data structures";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      benchmarks = {
        "criterion" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."hvect" or ((hsPkgs.pkgs-errors).buildDepError "hvect"))
            (hsPkgs."hetero-dict" or ((hsPkgs.pkgs-errors).buildDepError "hetero-dict"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }