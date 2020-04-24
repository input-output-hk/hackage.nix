{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "xdot"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Dennis Felsing 2012-2016";
      maintainer = "Dennis Felsing <dennis@felsin9.de>";
      author = "Dennis Felsing <dennis@felsin9.de>";
      homepage = "";
      url = "";
      synopsis = "Parse Graphviz xdot files and interactively view them using GTK and Cairo";
      description = "Parse Graphviz xdot files and interactively view them using\nGTK and Cairo.\n\nCurrently not all xdot features are supported. Nodes and\nedges can be highlighted by hovering them and clicked.\n\nFor an example of using this library try the accompanying\n@Demo.hs@ with the dot-files in @dot-examples/@.\n\nThis library was originally written as part of ghc-vis, but\nis now a separate project, in case anyone else may have a\nuse for it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
          (hsPkgs."gtk3" or ((hsPkgs.pkgs-errors).buildDepError "gtk3"))
          (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."polyparse" or ((hsPkgs.pkgs-errors).buildDepError "polyparse"))
          ];
        buildable = true;
        };
      exes = {
        "xdot-demo" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
            (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"))
            (hsPkgs."gtk3" or ((hsPkgs.pkgs-errors).buildDepError "gtk3"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."xdot" or ((hsPkgs.pkgs-errors).buildDepError "xdot"))
            ];
          buildable = true;
          };
        };
      };
    }