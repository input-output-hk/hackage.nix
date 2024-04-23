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
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "logic-TPTP"; version = "0.4.6.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ahn, Ki Yung <kya@pdx.edu>, Daniel Schüssler <daniels@community.haskell.org>";
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pointed" or (errorHandler.buildDepError "pointed"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
        ];
        build-tools = [
          (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
          (hsPkgs.buildPackages.happy.components.exes.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy:happy")))
        ];
        buildable = true;
      };
    };
  }