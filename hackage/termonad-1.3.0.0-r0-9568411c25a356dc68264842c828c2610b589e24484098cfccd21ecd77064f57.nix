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
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "termonad"; version = "1.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Dennis Gosnell";
      maintainer = "cdep.illabout@gmail.com";
      author = "Dennis Gosnell";
      homepage = "https://github.com/cdepillabout/termonad";
      url = "";
      synopsis = "Terminal emulator configurable in Haskell";
      description = "Please see <https://github.com/cdepillabout/termonad#readme README.md>.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest or (buildToolDepError "cabal-doctest")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."adjunctions" or (buildDepError "adjunctions"))
          (hsPkgs."classy-prelude" or (buildDepError "classy-prelude"))
          (hsPkgs."colour" or (buildDepError "colour"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."distributive" or (buildDepError "distributive"))
          (hsPkgs."dyre" or (buildDepError "dyre"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."focuslist" or (buildDepError "focuslist"))
          (hsPkgs."gi-gdk" or (buildDepError "gi-gdk"))
          (hsPkgs."gi-gio" or (buildDepError "gi-gio"))
          (hsPkgs."gi-glib" or (buildDepError "gi-glib"))
          (hsPkgs."gi-gtk" or (buildDepError "gi-gtk"))
          (hsPkgs."gi-pango" or (buildDepError "gi-pango"))
          (hsPkgs."gi-vte" or (buildDepError "gi-vte"))
          (hsPkgs."haskell-gi-base" or (buildDepError "haskell-gi-base"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mono-traversable" or (buildDepError "mono-traversable"))
          (hsPkgs."pretty-simple" or (buildDepError "pretty-simple"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."xml-conduit" or (buildDepError "xml-conduit"))
          (hsPkgs."xml-html-qq" or (buildDepError "xml-html-qq"))
          ];
        pkgconfig = [
          (pkgconfPkgs."gtk+-3.0" or (pkgConfDepError "gtk+-3.0"))
          (pkgconfPkgs."vte-2.91" or (pkgConfDepError "vte-2.91"))
          ];
        };
      exes = {
        "termonad" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."termonad" or (buildDepError "termonad"))
            ];
          };
        "termonad-readme" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."markdown-unlit" or (buildDepError "markdown-unlit"))
            (hsPkgs."termonad" or (buildDepError "termonad"))
            (hsPkgs."colour" or (buildDepError "colour"))
            ];
          };
        "termonad-example-colour-extension" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."termonad" or (buildDepError "termonad"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            ];
          };
        "termonad-example-colour-extension-solarized" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."termonad" or (buildDepError "termonad"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            ];
          };
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          };
        "termonad-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."genvalidity-containers" or (buildDepError "genvalidity-containers"))
            (hsPkgs."genvalidity-hspec" or (buildDepError "genvalidity-hspec"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."termonad" or (buildDepError "termonad"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hspec" or (buildDepError "tasty-hspec"))
            ];
          };
        };
      };
    }