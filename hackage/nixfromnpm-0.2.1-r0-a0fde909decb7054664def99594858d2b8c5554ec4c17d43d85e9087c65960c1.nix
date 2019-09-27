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
      identifier = { name = "nixfromnpm"; version = "0.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "anelson@narrativescience.com";
      author = "Allen Nelson";
      homepage = "";
      url = "";
      synopsis = "Generate nix expressions from npm packages.";
      description = "Given an npm package name and one or more npm repositories, will dump out a\ncollection of nix files, one each for the initial package and all of its\ndependencies. Will generate a top-level 'default.nix' which returns a set\ncontaining all of these expressions. Subsequent invocations of the program\nusing the same target directory will result in re-use of the existing files,\nto avoid unnecessary duplication.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."classy-prelude" or (buildDepError "classy-prelude"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."shelly" or (buildDepError "shelly"))
          (hsPkgs."MissingH" or (buildDepError "MissingH"))
          (hsPkgs."error-list" or (buildDepError "error-list"))
          (hsPkgs."text-render" or (buildDepError "text-render"))
          (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."hnix" or (buildDepError "hnix"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          ];
        buildable = true;
        };
      exes = {
        "nixfromnpm" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."classy-prelude" or (buildDepError "classy-prelude"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."error-list" or (buildDepError "error-list"))
            (hsPkgs."text-render" or (buildDepError "text-render"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hnix" or (buildDepError "hnix"))
            (hsPkgs."nixfromnpm" or (buildDepError "nixfromnpm"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."classy-prelude" or (buildDepError "classy-prelude"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."io-streams" or (buildDepError "io-streams"))
            (hsPkgs."http-client-streams" or (buildDepError "http-client-streams"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."github" or (buildDepError "github"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or (buildDepError "hspec-expectations"))
            (hsPkgs."error-list" or (buildDepError "error-list"))
            (hsPkgs."text-render" or (buildDepError "text-render"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hnix" or (buildDepError "hnix"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }