{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hsc3-utils"; version = "0.15"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2013-2014";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/t/hsc3-utils";
      url = "";
      synopsis = "Haskell SuperCollider Utilities";
      description = "Haskell SuperCollider Utilities";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."hosc" or ((hsPkgs.pkgs-errors).buildDepError "hosc"))
          (hsPkgs."hsc3" or ((hsPkgs.pkgs-errors).buildDepError "hsc3"))
          (hsPkgs."hsc3-sf" or ((hsPkgs.pkgs-errors).buildDepError "hsc3-sf"))
          ];
        buildable = true;
        };
      exes = {
        "hsc3-hash-at" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hsc3-rw" or ((hsPkgs.pkgs-errors).buildDepError "hsc3-rw"))
            ];
          buildable = true;
          };
        "hsc3-hash-paren" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hsc3-rw" or ((hsPkgs.pkgs-errors).buildDepError "hsc3-rw"))
            ];
          buildable = true;
          };
        "hsc3-id-rewrite" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hsc3-rw" or ((hsPkgs.pkgs-errors).buildDepError "hsc3-rw"))
            ];
          buildable = true;
          };
        "hsc3-id-clear" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hsc3-rw" or ((hsPkgs.pkgs-errors).buildDepError "hsc3-rw"))
            ];
          buildable = true;
          };
        "hsc3-scsyndef-to-dot" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hsc3-dot" or ((hsPkgs.pkgs-errors).buildDepError "hsc3-dot"))
            (hsPkgs."hsc3" or ((hsPkgs.pkgs-errors).buildDepError "hsc3"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }