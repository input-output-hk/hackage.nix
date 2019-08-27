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
    flags = { network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "atlassian-connect-core"; version = "0.7.1.0"; };
      license = "Apache-2.0";
      copyright = "(c) 2014 Robert Massaioli, Avi Knoll, Eero Kaukonen";
      maintainer = "rmassaioli@atlassian.com";
      author = "Robert Massaioli";
      homepage = "https://bitbucket.org/ajknoll/atlassian-connect-core";
      url = "";
      synopsis = "Atlassian Connect snaplet for the Snap Framework and helper code.";
      description = "This library allows you to quickly get an Atlassian Connect application running\non top of the Snap Framework. It provides best practices and helper functions to get you moving\nquickly. Please read the rest of the documentation for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."atlassian-connect-descriptor" or (buildDepError "atlassian-connect-descriptor"))
          (hsPkgs."jwt" or (buildDepError "jwt"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."cipher-aes" or (buildDepError "cipher-aes"))
          (hsPkgs."configurator" or (buildDepError "configurator"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."hostname" or (buildDepError "hostname"))
          (hsPkgs."http-media" or (buildDepError "http-media"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."snap" or (buildDepError "snap"))
          (hsPkgs."snap-core" or (buildDepError "snap-core"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."time-units" or (buildDepError "time-units"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."network-api-support" or (buildDepError "network-api-support"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          ] ++ [
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."network" or (buildDepError "network"))
          ];
        pkgconfig = [ (pkgconfPkgs."zlib" or (pkgConfDepError "zlib")) ];
        };
      };
    }