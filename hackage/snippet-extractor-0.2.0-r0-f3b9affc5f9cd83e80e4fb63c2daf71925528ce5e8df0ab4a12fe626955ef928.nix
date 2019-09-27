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
      specVersion = "1.6";
      identifier = { name = "snippet-extractor"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dagitj@gmail.com";
      author = "Jason Dagit";
      homepage = "";
      url = "";
      synopsis = "Extracts labeled snippets of code to files.";
      description = "Snippet-extractor looks for snippets in files and\nplaces those snippets in their own files.\n\nA snippet is defined as consecutive lines in a\nfile delimited by \\\"\\@snippet-start \\<filename\\>\\\" and\n\\\"\\@snippet-end\\\", the extracted snippet is placed in\nthe provided filename.  If the desired filename\ncontains spaces, put the filename in quotes.\n\nEverything on the line with the start and end\nmarkers is discarded.  Snippet-extractor should\nbe agnostic to the syntax of the file you are\nextracting from.\n\nHere is an example:\n\n>  /* @snippet-start snippet1.c */\n>  for(i = 0; i < 100; i++){\n>    printf(\"%d\\n\",i);\n>  }\n>  /* @snippet-end */\n\nThe above snippet would be extracted and placed in\nsnippet1.c\n\nSnippet-extractor is intended for use in\ndocumentation.  For example, the snippets could\nbe extracted from working code and then included\nin a text about the code.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "snippet-extractor" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }