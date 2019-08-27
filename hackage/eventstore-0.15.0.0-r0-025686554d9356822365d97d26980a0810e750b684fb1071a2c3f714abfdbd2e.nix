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
      identifier = { name = "eventstore"; version = "0.15.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Yorick Laupa";
      maintainer = "yo.eight@gmail.com";
      author = "Yorick Laupa";
      homepage = "https://github.com/YoEight/eventstore#readme";
      url = "";
      synopsis = "EventStore TCP Client";
      description = "EventStore TCP Client <http://geteventstore.com>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."mono-traversable" or (buildDepError "mono-traversable"))
          (hsPkgs."connection" or (buildDepError "connection"))
          (hsPkgs."dotnet-timespan" or (buildDepError "dotnet-timespan"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."stm-chans" or (buildDepError "stm-chans"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."lifted-async" or (buildDepError "lifted-async"))
          (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."protobuf" or (buildDepError "protobuf"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."dns" or (buildDepError "dns"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
          (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
          (hsPkgs."text-format" or (buildDepError "text-format"))
          (hsPkgs."clock" or (buildDepError "clock"))
          (hsPkgs."machines" or (buildDepError "machines"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."interpolate" or (buildDepError "interpolate"))
          (hsPkgs."ekg-core" or (buildDepError "ekg-core"))
          ];
        };
      tests = {
        "eventstore-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."mono-traversable" or (buildDepError "mono-traversable"))
            (hsPkgs."connection" or (buildDepError "connection"))
            (hsPkgs."dotnet-timespan" or (buildDepError "dotnet-timespan"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."stm-chans" or (buildDepError "stm-chans"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."lifted-async" or (buildDepError "lifted-async"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."eventstore" or (buildDepError "eventstore"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-hspec" or (buildDepError "tasty-hspec"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."protobuf" or (buildDepError "protobuf"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
            (hsPkgs."async" or (buildDepError "async"))
            ];
          };
        };
      };
    }