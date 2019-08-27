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
      specVersion = "1.10";
      identifier = { name = "epub-metadata"; version = "4.5"; };
      license = "BSD-3-Clause";
      copyright = "2010-2016 Dino Morelli";
      maintainer = "Dino Morelli <dino@ui3.info>";
      author = "Dino Morelli";
      homepage = "http://hub.darcs.net/dino/epub-metadata";
      url = "";
      synopsis = "Library for parsing epub document metadata";
      description = "Library for parsing and manipulating epub document metadata. Supports epub versions 2 and 3.\nThis library was constructed by studying the IDPF specifications for epub documents found here <http://www.idpf.org/epub/20/spec/OPF_2.0.1_draft.htm> and here <http://www.idpf.org/epub/30/spec/epub30-publications.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hxt" or (buildDepError "hxt"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."regex-compat-tdfa" or (buildDepError "regex-compat-tdfa"))
          (hsPkgs."zip-archive" or (buildDepError "zip-archive"))
          ];
        };
      exes = {
        "epub-metadata-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."epub-metadata" or (buildDepError "epub-metadata"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          };
        };
      tests = {
        "test-epub-metadata" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."hxt" or (buildDepError "hxt"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."regex-compat-tdfa" or (buildDepError "regex-compat-tdfa"))
            (hsPkgs."zip-archive" or (buildDepError "zip-archive"))
            ];
          };
        };
      };
    }