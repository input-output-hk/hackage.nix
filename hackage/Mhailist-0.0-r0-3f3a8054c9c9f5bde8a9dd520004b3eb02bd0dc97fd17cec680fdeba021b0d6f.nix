{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test = false; warnings = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "Mhailist"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cjs@cynic.net, lars@larsko.org";
      author = "Curt Sampson, Lars Kotthoff";
      homepage = "";
      url = "";
      synopsis = "Haskell mailing list manager";
      description = "A mailing list manager written in pure Haskell.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mhailist" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            ];
          buildable = true;
          };
        "Test" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = if flags.test then true else false;
          };
        };
      };
    }