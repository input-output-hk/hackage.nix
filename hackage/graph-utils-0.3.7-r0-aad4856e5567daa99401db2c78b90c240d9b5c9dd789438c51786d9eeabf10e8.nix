{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "graph-utils"; version = "0.3.7"; };
      license = "BSD-3-Clause";
      copyright = "(c) Hiromi Ishii 2010";
      maintainer = "Hiromi Ishii <mr_konn _at_ jcom.home.ne.jp>";
      author = "Hiromi Ishii";
      homepage = "http://github.com/konn/graph-utils/";
      url = "";
      synopsis = "A simple wrapper & quasi quoter for fgl.";
      description = "Simple Wrapper for generating Graph provided by Data.Graph.Inductive.\nIt also contains PageRank calculator.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          ];
        buildable = true;
        };
      };
    }