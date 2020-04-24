{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "satchmo"; version = "1.8.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Johannes Waldmann";
      author = "Pepe Iborra, Johannes Waldmann";
      homepage = "http://dfa.imn.htwk-leipzig.de/satchmo/\nhttp://github.com/pepeiborra/satchmo/";
      url = "";
      synopsis = "SAT encoding monad";
      description = "Encoding for boolean and integral constraints into (QBF-)CNF-SAT.\nThe encoder is provided as a State monad (hence the \"mo\" in \"satchmo\").\nThis package contains functions that construct problems,\nto solve them, you need package satchmo-backends.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          ];
        buildable = true;
        };
      };
    }