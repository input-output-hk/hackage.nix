{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "lambdiff"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jamie@bu.mp";
      author = "Jamie Turner";
      homepage = "https://github.com/jamwt/lambdiff.git";
      url = "";
      synopsis = "Diff Viewer";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lambdiff" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."enumerator" or ((hsPkgs.pkgs-errors).buildDepError "enumerator"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."attoparsec-enumerator" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec-enumerator"))
            ];
          buildable = true;
          };
        };
      };
    }