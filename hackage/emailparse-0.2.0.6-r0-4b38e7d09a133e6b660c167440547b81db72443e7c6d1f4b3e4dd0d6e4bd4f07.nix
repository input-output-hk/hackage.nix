{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "emailparse"; version = "0.2.0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michal@monad.cat";
      author = "Michal Kawalec";
      homepage = "";
      url = "";
      synopsis = "An email parser that will parse everything";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."word8" or ((hsPkgs.pkgs-errors).buildDepError "word8"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."mime" or ((hsPkgs.pkgs-errors).buildDepError "mime"))
          (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."text-icu" or ((hsPkgs.pkgs-errors).buildDepError "text-icu"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."strptime" or ((hsPkgs.pkgs-errors).buildDepError "strptime"))
          (hsPkgs."either-unwrap" or ((hsPkgs.pkgs-errors).buildDepError "either-unwrap"))
          ];
        buildable = true;
        };
      tests = {
        "emailparse-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."word8" or ((hsPkgs.pkgs-errors).buildDepError "word8"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."mime" or ((hsPkgs.pkgs-errors).buildDepError "mime"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
            (hsPkgs."text-icu" or ((hsPkgs.pkgs-errors).buildDepError "text-icu"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."strptime" or ((hsPkgs.pkgs-errors).buildDepError "strptime"))
            (hsPkgs."either-unwrap" or ((hsPkgs.pkgs-errors).buildDepError "either-unwrap"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }