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
      specVersion = "1.8";
      identifier = { name = "macbeth-lib"; version = "0.0.12"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "tilmann@macbeth-ficsclient.com";
      author = "Tilmann Gass";
      homepage = "http://www.macbeth-ficsclient.com";
      url = "";
      synopsis = "Macbeth - A beautiful and minimalistic FICS client";
      description = "A FICS client written with OSX in mind.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."wxcore" or (buildDepError "wxcore"))
          (hsPkgs."wx" or (buildDepError "wx"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."sodium" or (buildDepError "sodium"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."MissingH" or (buildDepError "MissingH"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."FindBin" or (buildDepError "FindBin"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
          ];
        };
      exes = {
        "Macbeth" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."wx" or (buildDepError "wx"))
            (hsPkgs."wxcore" or (buildDepError "wxcore"))
            (hsPkgs."macbeth-lib" or (buildDepError "macbeth-lib"))
            (hsPkgs."stm" or (buildDepError "stm"))
            ];
          };
        };
      tests = {
        "macbeth-lib-test" = {
          depends = [
            (hsPkgs."macbeth-lib" or (buildDepError "macbeth-lib"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            ];
          };
        };
      };
    }