{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "satchmo-minisat"; version = "1.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Johannes Waldmann";
      author = "Johannes Waldmann";
      homepage = "http://dfa.imn.htwk-leipzig.de/satchmo/";
      url = "";
      synopsis = "minisat driver as backend for satchmo";
      description = "this driver calls minisat (download from http://minisat.se/)\nto solve CNF-SAT constraints produced by satchmo";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."satchmo" or ((hsPkgs.pkgs-errors).buildDepError "satchmo"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }