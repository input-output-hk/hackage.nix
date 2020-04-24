{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "satchmo-funsat"; version = "1.4"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Johannes Waldmann";
      author = "Johannes Waldmann";
      homepage = "http://dfa.imn.htwk-leipzig.de/satchmo/";
      url = "";
      synopsis = "funsat driver as backend for satchmo";
      description = "this driver calls funsat (download from hackage)\nto solve CNF-SAT constraints produced by satchmo";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."satchmo" or ((hsPkgs.pkgs-errors).buildDepError "satchmo"))
          (hsPkgs."funsat" or ((hsPkgs.pkgs-errors).buildDepError "funsat"))
          (hsPkgs."parse-dimacs" or ((hsPkgs.pkgs-errors).buildDepError "parse-dimacs"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ];
        buildable = true;
        };
      };
    }