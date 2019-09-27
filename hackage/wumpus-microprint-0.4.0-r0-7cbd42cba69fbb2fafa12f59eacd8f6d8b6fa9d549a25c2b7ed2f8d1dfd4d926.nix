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
      specVersion = "1.2";
      identifier = { name = "wumpus-microprint"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Microprints - \"greek-text\" pictures.";
      description = "\nA library to produce /microprints/ [1] sometimes known as\n\\\"greek-text\\\".\n\nNote this library only provides the graphically half of the\nfunctionality needed to make microprints. There is no support\nfor tokenizing input files, and at the moment it is really\njust a test bed for Wumpus.\n\nCurrently pictures are made within a monad providing /teletype/\nstyle operations. Other methods of drawing are possible, but\nare yet to be implemented.\n\n\\[1\\] <http://scg.unibe.ch/archive/papers/Robb05b-microprintsESUG.pdf>\n\nChangelog:\n\n0.3.0 to 0.4.0:\n\n* Implementation modules are now hidden. Added some documentation.\n\n* DrawF renamed DrawWordF, MP_config renamed MicroPrintConfig.\n\n0.2.0 to 0.3.0:\n\n* Updated to use ConsDrawing monad from Wumpus-Basic.\n\n0.1.1 to 0.2.0:\n\n* Updated to use Basic.Graphic types from wumpus-basic-0.2.0\n\n* Added bordered printing that marks the unit character width.\n\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          (hsPkgs."monadLib" or (buildDepError "monadLib"))
          (hsPkgs."wumpus-core" or (buildDepError "wumpus-core"))
          (hsPkgs."wumpus-basic" or (buildDepError "wumpus-basic"))
          ];
        buildable = true;
        };
      };
    }