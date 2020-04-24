{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "cache-polysemy"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2020 Poscat";
      maintainer = "poscat@mail.poscat.moe";
      author = "Poscat";
      homepage = "https://github.com/poscat0x04/cache-polysemy#readme";
      url = "";
      synopsis = "cached hashmap";
      description = "An polysemy interface for cached hashmap and an interpreter implemented using <https://hackage.haskell.org/package/cache cache>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cache" or ((hsPkgs.pkgs-errors).buildDepError "cache"))
          (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."polysemy" or ((hsPkgs.pkgs-errors).buildDepError "polysemy"))
          (hsPkgs."polysemy-plugin" or ((hsPkgs.pkgs-errors).buildDepError "polysemy-plugin"))
          ];
        buildable = true;
        };
      tests = {
        "cache-polysemy-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cache" or ((hsPkgs.pkgs-errors).buildDepError "cache"))
            (hsPkgs."cache-polysemy" or ((hsPkgs.pkgs-errors).buildDepError "cache-polysemy"))
            (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."polysemy" or ((hsPkgs.pkgs-errors).buildDepError "polysemy"))
            (hsPkgs."polysemy-plugin" or ((hsPkgs.pkgs-errors).buildDepError "polysemy-plugin"))
            ];
          buildable = true;
          };
        };
      };
    }