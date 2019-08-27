let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ghc-vis"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Dennis Felsing 2012";
      maintainer = "Dennis Felsing <dennis@felsin9.de>";
      author = "Dennis Felsing <dennis@felsin9.de>";
      homepage = "http://felsin9.de/nnis/ghc-vis";
      url = "";
      synopsis = "Live visualization of data structures in GHCi";
      description = "Visualize live data structures in GHCi. Evaluation is not\nforced and you can interact with the visualized data\nstructures. This allows seeing Haskell's lazy evaluation\nand sharing in action.\n\nTo use this package add the accompanying @ghci@ file to\nyour @.ghci@ like this:\n\n> echo \":script \$HOME/.cabal/share/ghc-vis-0.1/ghci\" >> ~/.ghci\n\nNow you can run ghci and experiment with @ghc-vis@. Start\nthe visualization:\n\n> \$ ghci\n> GHCi, version 7.4.2: http://www.haskell.org/ghc/  :? for help\n> > :vis\n\nA blank window should appear now. This is the visualization\nwindow. Add an expression to the visualization:\n\n> > let a = [1..3]\n> > :view a\n> > let b = cycle a\n> > :view b\n> > :view \"foo\" ++ \"bar\"\n\n<http://felsin9.de/nnis/ghc-vis/1.png>\n\nFunctions are red, named objects are green and links to an\nalready shown object are blue.\n\nNotice how @a@ is referenced by @b@.\n\nEvaluate an object that is shown in the visualization. You\ncan also click on the object to evaluate it.\n\n> > :eval t1\n\n<http://felsin9.de/nnis/ghc-vis/2.png>\n\nThe first element of @b@ has been evaluated. We see that\nit's a reference to the value that's also referenced in a,\nas they share the same name \"t0\".\n\nSwitch between the list view and the graph view:\n\n> > :switch\n\n<http://felsin9.de/nnis/ghc-vis/3.png>\n\nWhen an object is updated by accessing it, you have to call\n@:update@ to refresh the visualization window. You can also\nclick on an object to force an update:\n\n> > a !! 2\n> 3\n> > :update\n\n<http://felsin9.de/nnis/ghc-vis/4.png>\n\nClear the visualization window, this also happens when you\n@:load@ or @:reload@ a source file:\n\n> > :clear";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."ghc-heap-view" or (buildDepError "ghc-heap-view"))
          (hsPkgs."cairo" or (buildDepError "cairo"))
          (hsPkgs."gtk" or (buildDepError "gtk"))
          (hsPkgs."graphviz" or (buildDepError "graphviz"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."xdot" or (buildDepError "xdot"))
          ];
        };
      };
    }