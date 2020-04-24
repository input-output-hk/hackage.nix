{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildtestprograms = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "logic-TPTP"; version = "0.5.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ahn, Ki Yung <kya@pdx.edu>, Daniel Schüssler <daniels@community.haskell.org>, Masahiro Sakai <masahiro.sakai@gmail.com>";
      author = "Daniel Schüssler";
      homepage = "";
      url = "";
      synopsis = "Import, export etc. for TPTP, a syntax for first-order logic";
      description = "For information about the TPTP format, see <http://www.cs.miami.edu/~tptp/>.\n\nComponents:\n\n- Parser ('parse')\n\n- Exporter ('toTPTP')\n\n- Pretty-printer ('pretty')\n\n- QuickCheck instances (generation of random formulae)\n\n- 'diff' : Get a \\\"formula\\\" which represents the differences between two given formulae (equal subexpressions are truncated; so are the subexpressions of subexpressions whose heads already differ)\n\nTests passed:\n\n- For randomly generated formulae, @parse . toTPTP == id@\n\n- For all files in the TPTP (v 5.2.0) distribution's @Problems@ subtree which don't match the regex \\\"^(thf|tff)\\(\\\", @parse . toTPTP . parse == parse@\n\nNot yet implemented: The new /thf/ and /tff/ formula types.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."pointed" or ((hsPkgs.pkgs-errors).buildDepError "pointed"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or ((hsPkgs.pkgs-errors).buildToolDepError "alex")))
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or ((hsPkgs.pkgs-errors).buildToolDepError "happy")))
          ];
        buildable = true;
        };
      exes = {
        "TestImportExportImportFile" = {
          depends = [
            (hsPkgs."logic-TPTP" or ((hsPkgs.pkgs-errors).buildDepError "logic-TPTP"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."pcre-light" or ((hsPkgs.pkgs-errors).buildDepError "pcre-light"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."pcre-light" or ((hsPkgs.pkgs-errors).buildDepError "pcre-light"));
          buildable = if !flags.buildtestprograms then false else true;
          };
        "PrettyPrintFile" = {
          depends = [
            (hsPkgs."logic-TPTP" or ((hsPkgs.pkgs-errors).buildDepError "logic-TPTP"))
            (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."pcre-light" or ((hsPkgs.pkgs-errors).buildDepError "pcre-light"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."pcre-light" or ((hsPkgs.pkgs-errors).buildDepError "pcre-light"));
          buildable = if !flags.buildtestprograms then false else true;
          };
        "ParseRandom" = {
          depends = [
            (hsPkgs."logic-TPTP" or ((hsPkgs.pkgs-errors).buildDepError "logic-TPTP"))
            (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."pcre-light" or ((hsPkgs.pkgs-errors).buildDepError "pcre-light"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."pcre-light" or ((hsPkgs.pkgs-errors).buildDepError "pcre-light"));
          buildable = if !flags.buildtestprograms then false else true;
          };
        };
      tests = {
        "TestImportExportRandom" = {
          depends = [
            (hsPkgs."logic-TPTP" or ((hsPkgs.pkgs-errors).buildDepError "logic-TPTP"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
            (hsPkgs."pcre-light" or ((hsPkgs.pkgs-errors).buildDepError "pcre-light"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."pcre-light" or ((hsPkgs.pkgs-errors).buildDepError "pcre-light"));
          buildable = true;
          };
        };
      };
    }