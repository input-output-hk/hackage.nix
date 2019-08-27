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
      identifier = { name = "DefendTheKing"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2009, Yair Chuchem";
      maintainer = "Yair Chuchem (yairchu@gmail.com)";
      author = "Yair Chuchem";
      homepage = "http://github.com/yairchu/defend/tree";
      url = "";
      synopsis = "A simple RTS game";
      description = "Defend the King from the Forces of Different:\n(work in progress)\nA simple fast-paced multiplayer RTS game\ninspired by Bughouse-Chess and Starcraft.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "defend" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."peakachu" or (buildDepError "peakachu"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."MaybeT" or (buildDepError "MaybeT"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            ];
          };
        "defendFontEdit" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."peakachu" or (buildDepError "peakachu"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        };
      };
    }