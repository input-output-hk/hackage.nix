{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { buildtestprograms = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "logic-TPTP"; version = "0.6.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ahn, Ki Yung <kya@pdx.edu>, Daniel Schüssler <daniels@community.haskell.org>, Masahiro Sakai <masahiro.sakai@gmail.com>";
      author = "Daniel Schüssler";
      homepage = "";
      url = "";
      synopsis = "Import, export etc. for TPTP, a syntax for first-order logic";
      description = "For information about the TPTP format, see <https://www.tptp.org/>.\n\nComponents:\n\n- Parser ('parse')\n\n- Exporter ('toTPTP')\n\n- Pretty-printer ('pretty')\n\n- QuickCheck instances (generation of random formulae)\n\n- 'diff' : Get a \\\"formula\\\" which represents the differences between two given formulae (equal subexpressions are truncated; so are the subexpressions of subexpressions whose heads already differ)\n\nTests passed:\n\n- For randomly generated formulae, @parse . toTPTP == id@\n\n- For all files in the TPTP (v 5.2.0) distribution's @Problems@ subtree which don't match the regex \\\"^(thf|tff)\\(\\\", @parse . toTPTP . parse == parse@\n\nNot yet implemented: The new /thf/ and /tff/ formula types.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pointed" or (errorHandler.buildDepError "pointed"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.alex.components.exes.alex or (pkgs.pkgsBuildBuild.alex or (errorHandler.buildToolDepError "alex:alex")))
          (hsPkgs.pkgsBuildBuild.happy.components.exes.happy or (pkgs.pkgsBuildBuild.happy or (errorHandler.buildToolDepError "happy:happy")))
        ];
        buildable = true;
      };
      exes = {
        "TestImportExportImportFile" = {
          depends = [
            (hsPkgs."logic-TPTP" or (errorHandler.buildDepError "logic-TPTP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          ];
          buildable = if !flags.buildtestprograms then false else true;
        };
        "PrettyPrintFile" = {
          depends = [
            (hsPkgs."logic-TPTP" or (errorHandler.buildDepError "logic-TPTP"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ];
          buildable = if !flags.buildtestprograms then false else true;
        };
        "ParseRandom" = {
          depends = [
            (hsPkgs."logic-TPTP" or (errorHandler.buildDepError "logic-TPTP"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ];
          buildable = if !flags.buildtestprograms then false else true;
        };
      };
      tests = {
        "TestImportExportRandom" = {
          depends = [
            (hsPkgs."logic-TPTP" or (errorHandler.buildDepError "logic-TPTP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
    };
  }