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
      specVersion = "1.12";
      identifier = { name = "niv"; version = "0.2.12"; };
      license = "MIT";
      copyright = "(c) 2019 Nicolas Mattia";
      maintainer = "Nicolas Mattia <nicolas@nmattia.com>";
      author = "Nicolas Mattia <nicolas@nmattia.com>";
      homepage = "https://github.com/nmattia/niv#readme";
      url = "";
      synopsis = "Easy dependency management for Nix projects";
      description = "Easy dependency management for Nix projects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."file-embed" or (buildDepError "file-embed"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
          (hsPkgs."string-qq" or (buildDepError "string-qq"))
          (hsPkgs."tasty" or (buildDepError "tasty"))
          (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unliftio" or (buildDepError "unliftio"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      exes = {
        "niv" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."niv" or (buildDepError "niv"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."profunctors" or (buildDepError "profunctors"))
            (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
            (hsPkgs."string-qq" or (buildDepError "string-qq"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unliftio" or (buildDepError "unliftio"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        "niv-test" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."niv" or (buildDepError "niv"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."profunctors" or (buildDepError "profunctors"))
            (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
            (hsPkgs."string-qq" or (buildDepError "string-qq"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unliftio" or (buildDepError "unliftio"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }