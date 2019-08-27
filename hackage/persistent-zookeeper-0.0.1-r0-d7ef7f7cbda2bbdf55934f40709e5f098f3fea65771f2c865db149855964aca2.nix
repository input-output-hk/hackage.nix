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
      specVersion = "1.8";
      identifier = { name = "persistent-zookeeper"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Junji Hashimoto <junji.hashimoto@gree.net>";
      author = "Junji Hashimoto <junji.hashimoto@gree.net>";
      homepage = "";
      url = "";
      synopsis = "Backend for persistent library using Zookeeper.";
      description = "Based on the Zookeeper package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."persistent" or (buildDepError "persistent"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."hzk" or (buildDepError "hzk"))
          (hsPkgs."resource-pool" or (buildDepError "resource-pool"))
          (hsPkgs."path-pieces" or (buildDepError "path-pieces"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."stm" or (buildDepError "stm"))
          ];
        };
      tests = {
        "basic" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."persistent" or (buildDepError "persistent"))
            (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."persistent-zookeeper" or (buildDepError "persistent-zookeeper"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."hzk" or (buildDepError "hzk"))
            (hsPkgs."resource-pool" or (buildDepError "resource-pool"))
            (hsPkgs."path-pieces" or (buildDepError "path-pieces"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."stm" or (buildDepError "stm"))
            ];
          };
        };
      };
    }