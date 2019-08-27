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
      identifier = { name = "agda-snippets"; version = "2.4.2.5"; };
      license = "BSD-3-Clause";
      copyright = "Liam O'Connor, 2015";
      maintainer = "liamoc@cse.unsw.edu.au";
      author = "Liam O'Connor";
      homepage = "http://github.com/liamoc/agda-snippets#readme";
      url = "";
      synopsis = "Render just the Agda snippets of a literate Agda file to HTML";
      description = "This library provides a very simple function that translates just the code blocks\nof a literate Agda file to colourised, hyperlinked HTML. The output of this\ncan then be run through Pandoc or other document processors to allow literate\nAgda to be comfortably written in any format that allows inline HTML snippets.\n\nThere is also a simple command-line application (@agda-snippets@) included\nthat can be used as a standalone file processor.\n\nThe location of library source hyperlinks is configurable, as is the CSS class\ngiven to Agda code blocks.\n\nThis package is pinned to particular Agda versions, and therefore does not\nobey the PVP, as Agda does not. You should use whichever version of this library\ncorresponds to the Agda version you wish to use.\n\nThe development version of this library, available from GitHub, may work with\ndevelopment versions of Agda, although it could be broken at any time. If you\nstick to stable versions, you should be fine.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."Agda" or (buildDepError "Agda"))
          (hsPkgs."xhtml" or (buildDepError "xhtml"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      exes = {
        "agda-snippets" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."agda-snippets" or (buildDepError "agda-snippets"))
            (hsPkgs."Agda" or (buildDepError "Agda"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      };
    }