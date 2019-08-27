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
    flags = { cairo = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "puzzle-draw"; version = "0.1.0.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "rfvollmert@gmail.com";
      author = "Robert Vollmert";
      homepage = "";
      url = "";
      synopsis = "Creating graphics for pencil puzzles.";
      description = "puzzle-draw is a library and tool for drawing pencil\npuzzles using Diagrams. It aims to provide a utility\nlayer on top of Diagrams to help with drawing arbitrary\npuzzles, and to support several specific puzzles types\nIn addition, it includes functionality for parsing\npuzzle data from a YAML file format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."SVGFonts" or (buildDepError "SVGFonts"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          ] ++ (if flags.cairo
          then [ (hsPkgs."diagrams-cairo" or (buildDepError "diagrams-cairo")) ]
          else [ (hsPkgs."diagrams-svg" or (buildDepError "diagrams-svg")) ]);
        };
      exes = {
        "drawpuzzle" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."puzzle-draw" or (buildDepError "puzzle-draw"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ] ++ (if flags.cairo
            then [
              (hsPkgs."diagrams-cairo" or (buildDepError "diagrams-cairo"))
              ]
            else [ (hsPkgs."diagrams-svg" or (buildDepError "diagrams-svg")) ]);
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."blaze-svg" or (buildDepError "blaze-svg"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-svg" or (buildDepError "diagrams-svg"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."puzzle-draw" or (buildDepError "puzzle-draw"))
            ];
          };
        };
      };
    }