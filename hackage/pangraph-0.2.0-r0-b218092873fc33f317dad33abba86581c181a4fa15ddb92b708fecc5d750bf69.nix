{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pangraph"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2018 Joesph Scott";
      maintainer = "joseph-scott@hotmail.co.uk";
      author = "Joe Scott";
      homepage = "https://github.com/tuura/pangraph#readme";
      url = "";
      synopsis = "A set of parsers for graph languages and conversions to\ngraph libaries.";
      description = "A package allowing parsing of graph files into graph\nlibrary datatypes. With aim the cope with large networks\nand provide translations between graph libraries. Like a\npandoc but for graphs. This is my first library so any\nfeedback and help is appreicated. For example use please\nsee the homepage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."hexml" or ((hsPkgs.pkgs-errors).buildDepError "hexml"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."algebraic-graphs" or ((hsPkgs.pkgs-errors).buildDepError "algebraic-graphs"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."html-entities" or ((hsPkgs.pkgs-errors).buildDepError "html-entities"))
          ];
        buildable = true;
        };
      tests = {
        "pangraph-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."pangraph" or ((hsPkgs.pkgs-errors).buildDepError "pangraph"))
            ];
          buildable = true;
          };
        };
      };
    }