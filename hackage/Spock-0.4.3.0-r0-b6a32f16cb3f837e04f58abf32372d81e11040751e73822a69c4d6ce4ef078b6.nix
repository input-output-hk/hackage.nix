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
      identifier = { name = "Spock"; version = "0.4.3.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 - 2014 Alexander Thiemann";
      maintainer = "mail@agrafix.net";
      author = "Alexander Thiemann <mail@agrafix.net>";
      homepage = "https://github.com/agrafix/Spock";
      url = "";
      synopsis = "Another Haskell web toolkit based on scotty";
      description = "This toolbox provides everything you need to get a quick start into web hacking with haskell: sessions, cookies, database helper, global state and the power of scotty";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."scotty" or (buildDepError "scotty"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."wai-util" or (buildDepError "wai-util"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."xsd" or (buildDepError "xsd"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."resource-pool" or (buildDepError "resource-pool"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."pool-conduit" or (buildDepError "pool-conduit"))
          (hsPkgs."vault" or (buildDepError "vault"))
          ];
        };
      };
    }