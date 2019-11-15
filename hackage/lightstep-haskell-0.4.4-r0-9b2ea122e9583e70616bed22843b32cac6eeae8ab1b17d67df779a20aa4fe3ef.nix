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
    flags = { examples = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "lightstep-haskell"; version = "0.4.4"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Dmitry Ivanov <ethercrow@gmail.com>";
      author = "";
      homepage = "https://github.com/ethercrow/lightstep-haskell#readme";
      url = "";
      synopsis = "LightStep OpenTracing client library";
      description = "LightStep OpenTracing client library. Uses GRPC transport via proto-lens.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."chronos" or (buildDepError "chronos"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."http2-client" or (buildDepError "http2-client"))
          (hsPkgs."http2-client-grpc" or (buildDepError "http2-client-grpc"))
          (hsPkgs."http2-grpc-proto-lens" or (buildDepError "http2-grpc-proto-lens"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."proto-lens" or (buildDepError "proto-lens"))
          (hsPkgs."proto-lens-protobuf-types" or (buildDepError "proto-lens-protobuf-types"))
          (hsPkgs."proto-lens-runtime" or (buildDepError "proto-lens-runtime"))
          (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."wai" or (buildDepError "wai"))
          ];
        buildable = true;
        };
      exes = {
        "lightstep-haskell-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."http2-client" or (buildDepError "http2-client"))
            (hsPkgs."lightstep-haskell" or (buildDepError "lightstep-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = if flags.examples then true else false;
          };
        "lightstep-haskell-wai-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."lightstep-haskell" or (buildDepError "lightstep-haskell"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."warp" or (buildDepError "warp"))
            ];
          buildable = if flags.examples then true else false;
          };
        "lightstep-haskell-req-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."lightstep-haskell" or (buildDepError "lightstep-haskell"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."req" or (buildDepError "req"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }