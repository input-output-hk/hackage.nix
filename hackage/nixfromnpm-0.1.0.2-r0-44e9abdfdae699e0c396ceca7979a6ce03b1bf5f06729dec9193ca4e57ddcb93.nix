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
      identifier = { name = "nixfromnpm"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "anelson@narrativescience.com";
      author = "Allen Nelson";
      homepage = "";
      url = "";
      synopsis = "Generate nix expressions from npm packages.";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "nixfromnpm" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."classy-prelude" or (buildDepError "classy-prelude"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
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
            (hsPkgs."simple-nix" or (buildDepError "simple-nix"))
            (hsPkgs."docopt" or (buildDepError "docopt"))
            ];
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
            (hsPkgs."simple-nix" or (buildDepError "simple-nix"))
            ];
          };
        };
      };
    }