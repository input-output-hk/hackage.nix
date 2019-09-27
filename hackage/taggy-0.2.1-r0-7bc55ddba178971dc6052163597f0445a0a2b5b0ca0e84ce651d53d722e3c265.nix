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
      identifier = { name = "taggy"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2014 Alp Mestanogullari, Vikram Verma";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari, Vikram Verma";
      homepage = "http://github.com/alpmestan/taggy";
      url = "";
      synopsis = "Efficient and simple HTML/XML parsing library";
      description = "/taggy/ is a simple package for parsing HTML (and should work with XML)\nwritten on top of the <http://hackage.haskell.org/package/attoparsec attoparsec>\nlibrary, which makes it one of the most efficient (space and time consumption wise)\non hackage.\n\nThis is the root module of /taggy/. It reexports everything\nfrom the package. See each module's docs for details about\nthe functions and types involved in /taggy/.\n\nWhile we've been testing the parser on /many/ pages, it may still\nbe a bit rough around the edges. Let us know on <http://github.com/alpmestan/taggy/issues github>\nif you have any problem.\n\nIf you like to look at your HTML through\nvarious optical instruments, feel free to take a look at\nthe companion <http://hackage.haskell.org/package/taggy-lens taggy-lens>\npackage we've put up together. It makes HTML parsing a piece of cake.\n\nIf you want to parse a document as list of tags\nand go through it as some kind of stream by just picking\nwhat you need, head to \"Text.Taggy.Parser\" and take\na look at 'Text.Taggy.Parser.taggyWith' and\n'Text.Taggy.Parser.run'.\n\nIf you want to parse the document as a DOM tree and\ntraverse it to find the information you need,\nuse 'Text.Taggy.DOM.parseDOM'. This is especially useful\nwhen used in conjunction with <http://hackage.haskell.org/package/taggy-lens taggy-lens>.\n\nIf you build some HTML manually\nor just transform some existing DOM tree\nand want to turn it into a 'Data.Text.Lazy.Text'\nhead to \"Text.Taggy.Renderer\" and look at 'Text.Taggy.Renderer.render'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      exes = {
        "taggy" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."taggy" or (buildDepError "taggy"))
            ];
          buildable = true;
          };
        };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-attoparsec" or (buildDepError "hspec-attoparsec"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        "integration" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-attoparsec" or (buildDepError "hspec-attoparsec"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "taggytagsoup" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."taggy" or (buildDepError "taggy"))
            (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }