{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { graph = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ghc-vis"; version = "0.3.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Dennis Felsing 2012";
      maintainer = "Dennis Felsing <dennis@felsin9.de>";
      author = "Dennis Felsing <dennis@felsin9.de>";
      homepage = "http://felsin9.de/nnis/ghc-vis";
      url = "";
      synopsis = "Live visualization of data structures in GHCi";
      description = "Visualize live data structures in GHCi. Evaluation is not\nforced and you can interact with the visualized data\nstructures. This allows seeing Haskell's lazy evaluation\nand sharing in action.\n\nTo use this package add the accompanying @ghci@ file to\nyour @.ghci@ like this:\n\n> echo \":script \$HOME/.cabal/share/ghc-vis-0.3.1.1/ghci\" >> ~/.ghci\n\nNow you can run ghci and experiment with @ghc-vis@. Start\nthe visualization:\n\n> \$ ghci\n> GHCi, version 7.4.2: http://www.haskell.org/ghc/  :? for help\n> > :vis\n\nA blank window should appear now. This is the visualization\nwindow. Add an expression to the visualization:\n\n> > let a = [1..3]\n> > :view a\n> > let b = cycle a\n> > :view b\n> > :view \"foo\" ++ \"bar\"\n\n<http://felsin9.de/nnis/ghc-vis/1.png>\n\nFunctions are red, named objects are green and links to an\nalready shown object are blue.\n\nNotice how @a@ is referenced by @b@.\n\nEvaluate an object that is shown in the visualization. You\ncan also click on the object to evaluate it.\n\n> > :eval t1\n\n<http://felsin9.de/nnis/ghc-vis/2.png>\n\nThe first element of @b@ has been evaluated. We see that\nit's a reference to the value that's also referenced in a,\nas they share the same name \"t0\".\n\nSwitch between the list view and the graph view:\n\n> > :switch\n\n<http://felsin9.de/nnis/ghc-vis/3.png>\n\nWhen an object is updated by accessing it, you have to call\n@:update@ to refresh the visualization window. You can also\nclick on an object to force an update:\n\n> > a !! 2\n> 3\n> > :update\n\n<http://felsin9.de/nnis/ghc-vis/4.png>\n\nClear the visualization window, this also happens when you\n@:load@ or @:reload@ a source file:\n\n> > :clear";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
          (hsPkgs."ghc-heap-view" or ((hsPkgs.pkgs-errors).buildDepError "ghc-heap-view"))
          ] ++ (pkgs.lib).optionals (flags.graph) [
          (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"))
          (hsPkgs."xdot" or ((hsPkgs.pkgs-errors).buildDepError "xdot"))
          ];
        buildable = true;
        };
      };
    }