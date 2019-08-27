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
      identifier = { name = "pontarius-xmpp"; version = "0.0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2011, Jon Kristensen";
      maintainer = "jon.kristensen@pontarius.org";
      author = "Jon Kristensen, Mahdi Abdinejadi";
      homepage = "http://www.pontarius.org/projects/pontarius-xmpp/";
      url = "http://www.pontarius.org/releases/pontarius-xmpp-0.0.3.0.tar.gz";
      synopsis = "A (prototyped) secure and easy to use XMPP library";
      description = "A work in progress of an implementation of RFC 3920: XMPP\nCore.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."hlogger" or (buildDepError "hlogger"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."enumerator" or (buildDepError "enumerator"))
          (hsPkgs."crypto-api" or (buildDepError "crypto-api"))
          (hsPkgs."base64-string" or (buildDepError "base64-string"))
          (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
          (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."xml-types" or (buildDepError "xml-types"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."xml-enumerator" or (buildDepError "xml-enumerator"))
          (hsPkgs."tls" or (buildDepError "tls"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        };
      };
    }