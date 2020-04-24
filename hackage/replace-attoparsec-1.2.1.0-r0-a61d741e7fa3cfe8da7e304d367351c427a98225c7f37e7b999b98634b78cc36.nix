{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "replace-attoparsec"; version = "1.2.1.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "James Brock <jamesbrock@gmail.com>";
      author = "James Brock <jamesbrock@gmail.com>";
      homepage = "https://github.com/jamesdbrock/replace-attoparsec";
      url = "";
      synopsis = "Find, replace, and edit text patterns with Attoparsec parsers";
      description = "Find text patterns, and also edit or replace the found patterns. Use\nAttoparsec monadic parsers instead of regular expressions for pattern matching.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "test-bytestring" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."replace-attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "replace-attoparsec"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."parsers" or ((hsPkgs.pkgs-errors).buildDepError "parsers"))
            ];
          buildable = true;
          };
        "test-text" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."replace-attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "replace-attoparsec"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."parsers" or ((hsPkgs.pkgs-errors).buildDepError "parsers"))
            ];
          buildable = true;
          };
        };
      };
    }