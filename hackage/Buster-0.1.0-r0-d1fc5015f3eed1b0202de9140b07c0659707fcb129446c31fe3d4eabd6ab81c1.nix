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
      identifier = { name = "Buster"; version = "0.1.0"; };
      license = "MIT";
      copyright = "(c) 2012 Michael Xavier";
      maintainer = "Michael Xavier <michael@michaelxavier.net>";
      author = "Michael Xavier <michael@michaelxavier.net>";
      homepage = "http://github.com/michaelxavier/Buster";
      url = "";
      synopsis = "Hits a set of urls periodically to bust caches";
      description = "Buster is a simple tool to periodically make requests to a list of URLs. The\nmain use case for this is to bust caches.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "buster" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."unbounded-delays" or (buildDepError "unbounded-delays"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."hinotify" or (buildDepError "hinotify"))
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or (buildDepError "hspec-expectations"))
            (hsPkgs."string-qq" or (buildDepError "string-qq"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            ];
          };
        };
      };
    }