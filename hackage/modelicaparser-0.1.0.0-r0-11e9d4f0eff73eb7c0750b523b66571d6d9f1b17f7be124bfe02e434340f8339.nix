{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildtests = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "modelicaparser"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Ingenieurbüro Guttenberg & Hördegen <http://www.energiefluss.info>";
      maintainer = "Heinrich Hördegen <hoerdegen@energiefluss.info>";
      author = "Heinrich Hördegen";
      homepage = "";
      url = "";
      synopsis = "A parser for the modelica language";
      description = "According to the Modelica Language Specification 3.3, Apendix B: <https://modelica.org/documents/ModelicaSpec33.pdf>.\nThe main interface of the parser is in 'Language.Modelica.Parser'. The main entry point to the parser is 'stored_definition'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "test-parsers" = {
          depends = (pkgs.lib).optionals (flags.buildtests) [
            (hsPkgs."modelicaparser" or ((hsPkgs.pkgs-errors).buildDepError "modelicaparser"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            ];
          buildable = if flags.buildtests then true else false;
          };
        "test-real-code" = {
          depends = (pkgs.lib).optionals (flags.buildtests) [
            (hsPkgs."modelicaparser" or ((hsPkgs.pkgs-errors).buildDepError "modelicaparser"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }