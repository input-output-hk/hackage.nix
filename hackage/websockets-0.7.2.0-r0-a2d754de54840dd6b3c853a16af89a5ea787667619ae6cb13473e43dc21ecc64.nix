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
      identifier = { name = "websockets"; version = "0.7.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2011 Siniša Biđin\n(c) 2011 Jasper Van der Jeugt\n(c) 2011 Steffen Schuldenzucker\n(c) 2011 Alex Lang";
      maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
      author = "Siniša Biđin <sinisa@bidin.cc>\nJasper Van der Jeugt <m@jaspervdj.be>\nSteffen Schuldenzucker <steffen.schuldenzucker@googlemail.com>\nAlex Lang <lang@tsurucapital.com>";
      homepage = "http://jaspervdj.be/websockets";
      url = "";
      synopsis = "A sensible and clean way to write WebSocket-capable servers in Haskell.";
      description = "This library allows you to write WebSocket-capable servers.\n\nSee an example: <http://jaspervdj.be/websockets/example.html>.\n\nThe API of the 'Network.WebSockets' module should also contain enough\ninformation to get you started.\n\nSee also:\n\n* The specification of the WebSocket protocol:\n<http://www.whatwg.org/specs/web-socket-protocol/>\n\n* The JavaScript API for dealing with WebSockets:\n<http://www.w3.org/TR/websockets/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."attoparsec-enumerator" or (buildDepError "attoparsec-enumerator"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."blaze-builder-enumerator" or (buildDepError "blaze-builder-enumerator"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."enumerator" or (buildDepError "enumerator"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."network-enumerator" or (buildDepError "network-enumerator"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."SHA" or (buildDepError "SHA"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
          (hsPkgs."entropy" or (buildDepError "entropy"))
          ];
        };
      tests = {
        "websockets-tests" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."attoparsec-enumerator" or (buildDepError "attoparsec-enumerator"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."blaze-builder-enumerator" or (buildDepError "blaze-builder-enumerator"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."enumerator" or (buildDepError "enumerator"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-enumerator" or (buildDepError "network-enumerator"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."SHA" or (buildDepError "SHA"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
            (hsPkgs."entropy" or (buildDepError "entropy"))
            ];
          };
        };
      };
    }