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
    flags = { test = false; network-bytestring = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "http-enumerator"; version = "0.6.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/http-enumerator";
      url = "";
      synopsis = "HTTP client package with enumerator interface and HTTPS support.";
      description = "This package uses attoparsec for parsing the actual contents of the HTTP connection. The only gotcha is the withHttpEnumerator function, otherwise should do exactly what you expect.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."failure" or (buildDepError "failure"))
          (hsPkgs."enumerator" or (buildDepError "enumerator"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."attoparsec-enumerator" or (buildDepError "attoparsec-enumerator"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."zlib-enum" or (buildDepError "zlib-enum"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."blaze-builder-enumerator" or (buildDepError "blaze-builder-enumerator"))
          (hsPkgs."tls" or (buildDepError "tls"))
          (hsPkgs."tls-extra" or (buildDepError "tls-extra"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."certificate" or (buildDepError "certificate"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          ] ++ (if flags.network-bytestring
          then [
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-bytestring" or (buildDepError "network-bytestring"))
            ]
          else [ (hsPkgs."network" or (buildDepError "network")) ]);
        };
      exes = { "http-enumerator" = {}; };
      };
    }