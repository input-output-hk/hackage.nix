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
      identifier = { name = "grakn"; version = "0.2.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "community@grakn.ai";
      author = "Grakn Labs";
      homepage = "https://github.com/graknlabs/grakn-haskell";
      url = "";
      synopsis = "A Haskell client for <http://grakn.ai Grakn>";
      description = "A Haskell client for <http://grakn.ai Grakn>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
          (hsPkgs."servant" or (buildDepError "servant"))
          (hsPkgs."servant-client" or (buildDepError "servant-client"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."http-media" or (buildDepError "http-media"))
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."grakn" or (buildDepError "grakn"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."servant-client" or (buildDepError "servant-client"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."http-media" or (buildDepError "http-media"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."markdown-unlit" or (buildDepError "markdown-unlit"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            ];
          };
        "accept" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."grakn" or (buildDepError "grakn"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."servant-client" or (buildDepError "servant-client"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."http-media" or (buildDepError "http-media"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."markdown-unlit" or (buildDepError "markdown-unlit"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            ];
          };
        };
      };
    }