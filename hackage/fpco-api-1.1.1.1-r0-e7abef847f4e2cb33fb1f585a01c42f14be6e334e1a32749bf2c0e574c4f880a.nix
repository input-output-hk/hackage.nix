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
    flags = { jenkins-build = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "fpco-api"; version = "1.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2013 FP Complete";
      maintainer = "dev@fpcomplete.com";
      author = "FP Complete";
      homepage = "https://www.fpcomplete.com/page/api";
      url = "";
      synopsis = "Simple interface to the FP Complete IDE API.";
      description = "A server and library for communicating with the FP Complete IDE API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."ini" or (buildDepError "ini"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."fay" or (buildDepError "fay"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."monad-extras" or (buildDepError "monad-extras"))
          (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."texts" or (buildDepError "texts"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
          (hsPkgs."failure" or (buildDepError "failure"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."yesod-fay" or (buildDepError "yesod-fay"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."persistent" or (buildDepError "persistent"))
          (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
          (hsPkgs."random" or (buildDepError "random"))
          ];
        };
      exes = {
        "fpco-api" = {
          depends = [
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fpco-api" or (buildDepError "fpco-api"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."ini" or (buildDepError "ini"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          };
        };
      };
    }