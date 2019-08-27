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
    flags = { relativepath = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "apelsin"; version = "1.2.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "christoffer@ojeling.net";
      author = "Christoffer Öjeling";
      homepage = "http://ojeling.net/apelsin";
      url = "";
      synopsis = "Server and community browser for the game Tremulous";
      description = "A gtk2hs server and clan browser for the open source game Tremulous\n<http://tremulous.net>. Both Tremulous 1.1 and GPP are supported.\nFeatures filtering, player search, a list of online clan members,\na clan list and basic perferences.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "apelsin" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."tremulous-query" or (buildDepError "tremulous-query"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."glib" or (buildDepError "glib"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."xdg-basedir" or (buildDepError "xdg-basedir"))
            ];
          };
        };
      };
    }