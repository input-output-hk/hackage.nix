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
      specVersion = "1.16";
      identifier = { name = "mp"; version = "0.1.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Piotr Borek <piotrborek@op.pl>";
      author = "Piotr Borek <piotrborek@op.pl>";
      homepage = "http://code.google.com/p/linux-music-player";
      url = "";
      synopsis = "Music player for linux.";
      description = "Music player for linux.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mp" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vty-ui" or (buildDepError "vty-ui"))
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."ConfigFile" or (buildDepError "ConfigFile"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."daemons" or (buildDepError "daemons"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."gstreamer" or (buildDepError "gstreamer"))
            (hsPkgs."glib" or (buildDepError "glib"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."hgettext" or (buildDepError "hgettext"))
            (hsPkgs."setlocale" or (buildDepError "setlocale"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          };
        };
      };
    }