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
      identifier = { name = "hsnsq"; version = "0.1.2.0"; };
      license = "Apache-2.0";
      copyright = "(c) Paul Berens";
      maintainer = "berens.paul@gmail.com";
      author = "Paul Berens";
      homepage = "https://github.com/gamelost/hsnsq";
      url = "";
      synopsis = "Haskell NSQ client.";
      description = "Currently a primitive NSQ client, it implements the very basics of an NSQ client for communicating with single NSQ servers. For example usage refer to https://github.com/gamelost/nsq-benchmarks/haskell/benchmark.hs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."attoparsec-binary" or (buildDepError "attoparsec-binary"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          (hsPkgs."pipes-attoparsec" or (buildDepError "pipes-attoparsec"))
          (hsPkgs."pipes-network" or (buildDepError "pipes-network"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."stm-chans" or (buildDepError "stm-chans"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."hostname" or (buildDepError "hostname"))
          ];
        buildable = true;
        };
      };
    }