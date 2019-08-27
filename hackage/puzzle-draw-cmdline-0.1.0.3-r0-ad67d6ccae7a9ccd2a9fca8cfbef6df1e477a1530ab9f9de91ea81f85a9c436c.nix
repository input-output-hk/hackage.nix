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
      identifier = { name = "puzzle-draw-cmdline"; version = "0.1.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "rfvollmert@gmail.com";
      author = "Robert Vollmert";
      homepage = "";
      url = "";
      synopsis = "Creating graphics for pencil puzzles, command line tools.";
      description = "Companion executable to puzzle-draw. Separate to keep\nthe dependency on diagrams-cairo out of the library.";
      buildType = "Simple";
      };
    components = {
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
      };
    }