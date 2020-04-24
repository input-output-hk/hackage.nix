{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dataflow"; version = "0.6.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Sony Mobile Communications";
      maintainer = "oskar.wickstrom@gmail.com";
      author = "Oskar Wickström (Sony Mobile Communications)";
      homepage = "https://github.com/sonyxperiadev/dataflow";
      url = "";
      synopsis = "Generate Graphviz documents from a Haskell representation.";
      description = "Render graphs using a declarative markup. Currently\nsupports DFD (http://en.wikipedia.org/wiki/Data_flow_diagram)\nand sequence diagrams (http://plantuml.sourceforge.net/sequence.html).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          ];
        buildable = true;
        };
      exes = {
        "dataflow" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."dataflow" or ((hsPkgs.pkgs-errors).buildDepError "dataflow"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."dataflow" or ((hsPkgs.pkgs-errors).buildDepError "dataflow"))
            ];
          buildable = true;
          };
        };
      };
    }