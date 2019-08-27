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
      identifier = { name = "marvin"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Justus Adam";
      maintainer = "dev@justus.science";
      author = "JustusAdam";
      homepage = "https://github.com/JustusAdam/marvin#readme";
      url = "";
      synopsis = "A modular bot for slack";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."classy-prelude" or (buildDepError "classy-prelude"))
          (hsPkgs."wreq" or (buildDepError "wreq"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."text-icu" or (buildDepError "text-icu"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
          (hsPkgs."configurator" or (buildDepError "configurator"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."text-format" or (buildDepError "text-format"))
          (hsPkgs."websockets" or (buildDepError "websockets"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."wuss" or (buildDepError "wuss"))
          (hsPkgs."random" or (buildDepError "random"))
          ];
        };
      exes = {
        "marvin-pp" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."classy-prelude" or (buildDepError "classy-prelude"))
            (hsPkgs."mustache" or (buildDepError "mustache"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            ];
          };
        "marvin-init" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."classy-prelude" or (buildDepError "classy-prelude"))
            (hsPkgs."mustache" or (buildDepError "mustache"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            ];
          };
        };
      };
    }