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
      identifier = { name = "SourceGraph"; version = "0.7.0.5"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Ivan Lazar Miljenovic";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Static code analysis using graph-theoretic techniques.";
      description = "Statically analyse Haskell source code using graph-theoretic\ntechniques.  Sample reports can be found at:\n<http://code.haskell.org/~ivanm/Sample_SourceGraph/SampleReports.html>\n\nTo use SourceGraph, call it as either:\n\n> SourceGraph path/to/Foo.cabal\n\nOr, if your project doesn't use Cabal, then there is limited support\nfor using an overall module from your program\\/library:\n\n> SourceGraph path/to/Foo.hs\n\nNote that the Cabal method is preferred, as it is better able to\ndetermine the project name and exported modules (when passing a\nHaskell file to SourceGraph, it uses that module's name as the overall\nname of project and assumes that it is the only exported module; as\nsuch, it works better for programs than libraries).\n\nWhichever way you run SourceGraph, it then creates a @SourceGraph@\nsubdirectory in the same directory as the file that was passed to it,\nand within that subdirectory creates the analysis report in\n@Foo.html@.\n\nSourceGraph is still experimental in terms of its ability to parse and\nproperly understand Haskell source code and in the types of analyses\nit performs.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "SourceGraph" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."multiset" or (buildDepError "multiset"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."Graphalyze" or (buildDepError "Graphalyze"))
            (hsPkgs."graphviz" or (buildDepError "graphviz"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            ];
          buildable = true;
          };
        };
      };
    }