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
      identifier = { name = "servant-snap"; version = "0.8.3.1"; };
      license = "BSD-3-Clause";
      copyright = "2014 Zalora South East Asia Pte Ltd";
      maintainer = "alpmestan@gmail.com imalsogreg@gmail.com";
      author = "Alp Mestanogullari, Sönke Hahn, Julian K. Arni, Greg Hale";
      homepage = "http://haskell-servant.github.io/";
      url = "";
      synopsis = "A family of combinators for defining webservices APIs and serving them";
      description = "Interpret a Servant API as a Snap server, using any Snaplets you like.\n\nYou can learn about the basics of servant in the Servant <https://haskell-servant.readthedocs.io tutorial>, and about the basics of Snap at the Snaplets <http://snapframework.com/docs/tutorials/snaplets-tutorial tutorial>\n\n<https://github.com/haskell-servant/servant-snap/blob/master/example/greet.hs Here>\nis a runnable example, with comments, that defines a dummy API and implements\na webserver that serves this API, using this package. One route delegates to the <https://hackage.haskell.org/package/snap/docs/Snap-Snaplet-Auth.html Auth> snaplet, another delegates to <https://hackage.haskell.org/package/snap/docs/Snap-Snaplet-Heist.html Heist>.\n\n<https://github.com/haskell-servant/servant-snap/blob/master/CHANGELOG.md CHANGELOG>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."http-media" or (buildDepError "http-media"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."http-api-data" or (buildDepError "http-api-data"))
          (hsPkgs."io-streams" or (buildDepError "io-streams"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."mmorph" or (buildDepError "mmorph"))
          (hsPkgs."servant" or (buildDepError "servant"))
          (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."snap" or (buildDepError "snap"))
          (hsPkgs."snap-core" or (buildDepError "snap-core"))
          (hsPkgs."snap-server" or (buildDepError "snap-server"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."word8" or (buildDepError "word8"))
          ];
        };
      exes = {
        "snap-greet" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."heist" or (buildDepError "heist"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."servant-client" or (buildDepError "servant-client"))
            (hsPkgs."servant-snap" or (buildDepError "servant-snap"))
            (hsPkgs."snap-cors" or (buildDepError "snap-cors"))
            (hsPkgs."map-syntax" or (buildDepError "map-syntax"))
            (hsPkgs."snap" or (buildDepError "snap"))
            (hsPkgs."snap-core" or (buildDepError "snap-core"))
            (hsPkgs."snap-server" or (buildDepError "snap-server"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."io-streams" or (buildDepError "io-streams"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."digestive-functors" or (buildDepError "digestive-functors"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."hspec-snap" or (buildDepError "hspec-snap"))
            (hsPkgs."hspec-core" or (buildDepError "hspec-core"))
            (hsPkgs."snap-cors" or (buildDepError "snap-cors"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."servant-snap" or (buildDepError "servant-snap"))
            (hsPkgs."snap" or (buildDepError "snap"))
            (hsPkgs."snap-core" or (buildDepError "snap-core"))
            (hsPkgs."snap-server" or (buildDepError "snap-server"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      };
    }