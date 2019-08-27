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
    flags = { debug-db = false; };
    package = {
      specVersion = "1.16";
      identifier = { name = "coin"; version = "1.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Piotr Borek <piotrborek@op.pl>";
      author = "Piotr Borek <piotrborek@op.pl>";
      homepage = "https://bitbucket.org/borekpiotr/coin";
      url = "";
      synopsis = "Simple account manager";
      description = "Simple account manager";
      buildType = "Simple";
      };
    components = {
      exes = {
        "coin" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."glib" or (buildDepError "glib"))
            (hsPkgs."gtk3" or (buildDepError "gtk3"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."persistent" or (buildDepError "persistent"))
            (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
            (hsPkgs."persistent-sqlite" or (buildDepError "persistent-sqlite"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (buildDepError "Win32"));
          };
        };
      };
    }