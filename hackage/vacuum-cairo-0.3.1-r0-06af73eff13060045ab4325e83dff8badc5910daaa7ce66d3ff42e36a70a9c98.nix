{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "vacuum-cairo"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Don Stewart 2009";
      maintainer = "Don Stewart <dons@galois.com>";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/vacuum-cairo";
      url = "";
      synopsis = "Visualize live Haskell data structures using vacuum, graphviz and cairo";
      description = "Visualize live Haskell data structures using vacuum, graphviz and cairo\n\n> \$ view \"hello\"\n\n<http://code.haskell.org/~dons/images/vacuum/hello.png>\n\n> \$ view [1..5]\n\n<http://code.haskell.org/~dons/images/vacuum/list.png>\n\n> \$ view (IntMap.fromList \$ zip [1..10] [1..])\n\n<http://code.haskell.org/~dons/images/vacuum/intmap.png>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vacuum" or ((hsPkgs.pkgs-errors).buildDepError "vacuum"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
          (hsPkgs."svgcairo" or ((hsPkgs.pkgs-errors).buildDepError "svgcairo"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."strict-concurrency" or ((hsPkgs.pkgs-errors).buildDepError "strict-concurrency"))
          ];
        buildable = true;
        };
      };
    }