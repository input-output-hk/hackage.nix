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
      specVersion = "1.22";
      identifier = { name = "mp"; version = "1.1.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Piotr Borek <piotrborek@op.pl>";
      author = "Piotr Borek <piotrborek@op.pl>";
      homepage = "http://bitbucket.org/borekpiotr/linux-music-player";
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
            (hsPkgs."haskell-gi-base" or (buildDepError "haskell-gi-base"))
            (hsPkgs."haskell-gi-overloading" or (buildDepError "haskell-gi-overloading"))
            (hsPkgs."gi-gobject" or (buildDepError "gi-gobject"))
            (hsPkgs."gi-glib" or (buildDepError "gi-glib"))
            (hsPkgs."gi-gst" or (buildDepError "gi-gst"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."ConfigFile" or (buildDepError "ConfigFile"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."daemons" or (buildDepError "daemons"))
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."simple-ui" or (buildDepError "simple-ui"))
            ];
          };
        };
      };
    }