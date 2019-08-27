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
      identifier = { name = "gipeda"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "mail@joachim-breitner.de";
      author = "Joachim Breitner";
      homepage = "https://github.com/nomeata/gipeda";
      url = "";
      synopsis = "Git Performance Dashboard";
      description = "Gitpeda is a a tool that presents data from your program’s benchmark suite\n(or any other source), with nice tables and shiny graphs.\n\nSo it is up to you whether you have a polling shell script loop, a post-commit\nhook or a elaborate jenkins setup. As long as the performance data ends up in\nthe `logs/` directory, gipeda is happy.\n\nGipeda produces static pages. In fact, the (single) html file and the\naccompagning JavaScript code is completely static. Giepda just generates a\nlarge number of json files. This has the advantage of easy deployment: Just put\ngipeda in your webspace of copy the files to some static web hosting and you\nare done. This putts very little load on your server, is cache friendly and has\nno security problems.\n\nDo you want to see it live? Check out these:\n\n* Demo page, visualizing fairly boring stuff about gipedia itself:\n<http://nomeata.github.io/gipeda/>\n\n* GHC’s gipeda installation:\n<https://perf.ghc.haskell.org/>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gipeda" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."shake" or (buildDepError "shake"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            ];
          };
        };
      };
    }