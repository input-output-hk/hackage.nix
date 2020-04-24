{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "glazier-react-examples"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Louis Pan";
      maintainer = "louis@pan.me";
      author = "Louis Pan";
      homepage = "https://github.com/louispan/glazier-react#readme";
      url = "";
      synopsis = "Examples of using glazier-react";
      description = "Examples of using glazier-react";
      buildType = "Simple";
      };
    components = {
      exes = {
        "glazier-react-todo" = {
          depends = ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."disposable" or ((hsPkgs.pkgs-errors).buildDepError "disposable"))
            (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
            (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
            (hsPkgs."glazier" or ((hsPkgs.pkgs-errors).buildDepError "glazier"))
            (hsPkgs."glazier-react" or ((hsPkgs.pkgs-errors).buildDepError "glazier-react"))
            (hsPkgs."glazier-react-widget" or ((hsPkgs.pkgs-errors).buildDepError "glazier-react-widget"))
            (hsPkgs."javascript-extras" or ((hsPkgs.pkgs-errors).buildDepError "javascript-extras"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."mmorph" or ((hsPkgs.pkgs-errors).buildDepError "mmorph"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
            (hsPkgs."pipes-concurrency" or ((hsPkgs.pkgs-errors).buildDepError "pipes-concurrency"))
            (hsPkgs."pipes-misc" or ((hsPkgs.pkgs-errors).buildDepError "pipes-misc"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ] ++ (pkgs.lib).optionals (compiler.isGhcjs && true) [
            (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))
            (hsPkgs."ghcjs-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-prim"))
            ]) ++ (pkgs.lib).optional (!(compiler.isGhcjs && true)) (hsPkgs."ghcjs-base-stub" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base-stub"));
          buildable = true;
          };
        };
      };
    }