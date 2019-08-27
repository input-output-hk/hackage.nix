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
      identifier = { name = "wolf"; version = "0.3.13"; };
      license = "MIT";
      copyright = "Copyright (C) 2015-2016 Swift Navigation, Inc.";
      maintainer = "Mark Fine <dev@swiftnav.com>";
      author = "Swift Navigation Inc.";
      homepage = "https://github.com/swift-nav/wolf";
      url = "";
      synopsis = "Amazon Simple Workflow Service Wrapper.";
      description = "Wolf is a wrapper around Amazon Simple Workflow Service.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."amazonka" or (buildDepError "amazonka"))
          (hsPkgs."amazonka-core" or (buildDepError "amazonka-core"))
          (hsPkgs."amazonka-s3" or (buildDepError "amazonka-s3"))
          (hsPkgs."amazonka-swf" or (buildDepError "amazonka-swf"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
          (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."filemanip" or (buildDepError "filemanip"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."lifted-async" or (buildDepError "lifted-async"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."preamble" or (buildDepError "preamble"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          ];
        };
      exes = {
        "wolf-actor" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."wolf" or (buildDepError "wolf"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            ];
          };
        "wolf-decider" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."wolf" or (buildDepError "wolf"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            ];
          };
        "wolf-counter" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."wolf" or (buildDepError "wolf"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            ];
          };
        "shake-wolf" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."shakers" or (buildDepError "shakers"))
            ];
          };
        };
      };
    }