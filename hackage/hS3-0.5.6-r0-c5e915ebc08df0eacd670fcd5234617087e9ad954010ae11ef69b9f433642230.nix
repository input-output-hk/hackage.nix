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
      specVersion = "1.6";
      identifier = { name = "hS3"; version = "0.5.6"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008, Greg Heartsfield";
      maintainer = "Greg Heartsfield <scsibug@imap.cc>";
      author = "Greg Heartsfield <scsibug@imap.cc>";
      homepage = "http://gregheartsfield.com/hS3/";
      url = "";
      synopsis = "Interface to Amazon's Simple Storage Service (S3)";
      description = "This is the Haskell S3 library.  It provides an\ninterface to Amazon's Simple Storage Service (S3), allowing Haskell\ndevelopers to reliably store and retrieve arbitrary amounts of\ndata from anywhere on the Internet.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."Crypto" or (buildDepError "Crypto"))
          (hsPkgs."hxt" or (buildDepError "hxt"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."dataenc" or (buildDepError "dataenc"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."MissingH" or (buildDepError "MissingH"))
          ];
        };
      exes = { "hs3" = {}; };
      };
    }