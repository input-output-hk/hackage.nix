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
      specVersion = "1.4";
      identifier = { name = "nptools"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Nicolas Pouillard";
      maintainer = "Nicolas Pouillard <nicolas.pouillard@gmail.com>";
      author = "Nicolas Pouillard";
      homepage = "";
      url = "";
      synopsis = "A collection of random tools";
      description = "A collection of random tools";
      buildType = "Simple";
      };
    components = {
      exes = {
        "archive" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."HSH" or (buildDepError "HSH"))
            ];
          };
        "color-diff" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        "events-to-timelog" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            ];
          };
        "extract-non-ascii" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        "git-prompt" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."HSH" or (buildDepError "HSH"))
            ];
          };
        "iter-lines" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        "label" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HSH" or (buildDepError "HSH"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          };
        "bufferize" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        "mh-gen-message-id-mapping" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        "show-non-ascii" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        "show-pollbox" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."SHA" or (buildDepError "SHA"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            ];
          };
        "summ" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
        "tac" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
        "rot" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
        "pad" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
        "myrev" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
        "loopback" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        "what-I-have-done-today" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        "x-printable" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        "cp-rescue" = {};
        "timer" = { depends = [ (hsPkgs."unix" or (buildDepError "unix")) ]; };
        "nest" = {};
        "getpin" = {};
        "starecho" = {};
        };
      };
    }