{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "Hsed"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "virukav@gmail.com";
      author = "Vitaliy Rukavishnikov";
      homepage = "http://github.com/rukav/Hsed";
      url = "";
      synopsis = "Stream Editor in Haskell";
      description = "A version of sed editor in Haskell based on POSIX \"The Open Group Base\nSpecifications Issue 7\" IEEE Std 1003.1-2008.\n\nFor the library usage check Hsed.Sed module and for the program usage\ntake a look in the attached README file";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Glob" or ((hsPkgs.pkgs-errors).buildDepError "Glob"))
          (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
          (hsPkgs."data-accessor" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor"))
          (hsPkgs."data-accessor-template" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor-template"))
          (hsPkgs."data-accessor-transformers" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor-transformers"))
          (hsPkgs."GotoT-transformers" or ((hsPkgs.pkgs-errors).buildDepError "GotoT-transformers"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
          (hsPkgs."regex-base" or ((hsPkgs.pkgs-errors).buildDepError "regex-base"))
          (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          ];
        buildable = true;
        };
      exes = { "Hsed" = { buildable = true; }; };
      };
    }