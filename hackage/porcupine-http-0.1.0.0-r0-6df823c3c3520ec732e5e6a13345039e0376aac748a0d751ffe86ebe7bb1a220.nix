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
      specVersion = "1.12";
      identifier = { name = "porcupine-http"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 EURL Tweag, NovaDiscovery";
      maintainer = "Yves Parès <yves.pares@tweag.io>";
      author = "";
      homepage = "https://github.com/tweag/porcupine#readme";
      url = "";
      synopsis = "A location accessor for porcupine to connect to HTTP sources/sinks";
      description = "Gives a porcupine task pipeline access to HTTP urls (GET, POST or\nPUT). Implements a specific location type (represented as JSON object) to pack\ntogether the url and some common HTTP header fields (method, content-type,\netc.). See the README at <https://github.com/tweag/porcupine#README.md> and\nthe examples in the `porcupine-http` package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."mime-types" or (buildDepError "mime-types"))
          (hsPkgs."porcupine-core" or (buildDepError "porcupine-core"))
          (hsPkgs."reader-soup" or (buildDepError "reader-soup"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
          (hsPkgs."streaming" or (buildDepError "streaming"))
          (hsPkgs."streaming-bytestring" or (buildDepError "streaming-bytestring"))
          (hsPkgs."streaming-conduit" or (buildDepError "streaming-conduit"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "example-pokeapi" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."docrecords" or (buildDepError "docrecords"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."hvega" or (buildDepError "hvega"))
            (hsPkgs."mime-types" or (buildDepError "mime-types"))
            (hsPkgs."porcupine-core" or (buildDepError "porcupine-core"))
            (hsPkgs."porcupine-http" or (buildDepError "porcupine-http"))
            (hsPkgs."reader-soup" or (buildDepError "reader-soup"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."streaming" or (buildDepError "streaming"))
            (hsPkgs."streaming-bytestring" or (buildDepError "streaming-bytestring"))
            (hsPkgs."streaming-conduit" or (buildDepError "streaming-conduit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        "example-stock" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."docrecords" or (buildDepError "docrecords"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."hvega" or (buildDepError "hvega"))
            (hsPkgs."mime-types" or (buildDepError "mime-types"))
            (hsPkgs."porcupine-core" or (buildDepError "porcupine-core"))
            (hsPkgs."porcupine-http" or (buildDepError "porcupine-http"))
            (hsPkgs."reader-soup" or (buildDepError "reader-soup"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."streaming" or (buildDepError "streaming"))
            (hsPkgs."streaming-bytestring" or (buildDepError "streaming-bytestring"))
            (hsPkgs."streaming-conduit" or (buildDepError "streaming-conduit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }