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
      identifier = { name = "mismi-s3"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Nick Hibberd <nhibberd@gmail.com>";
      author = "Nick Hibberd";
      homepage = "https://github.com/nhibberd/mismi";
      url = "";
      synopsis = "AWS Library";
      description = "mismi-s3 is a library that provides a set of common and useful\noperations on top of AWS S3.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mismi-core" or (buildDepError "mismi-core"))
          (hsPkgs."mismi-s3-core" or (buildDepError "mismi-s3-core"))
          (hsPkgs."mismi-p" or (buildDepError "mismi-p"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."amazonka" or (buildDepError "amazonka"))
          (hsPkgs."amazonka-core" or (buildDepError "amazonka-core"))
          (hsPkgs."amazonka-s3" or (buildDepError "amazonka-s3"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."lifted-async" or (buildDepError "lifted-async"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-bifunctors" or (buildDepError "transformers-bifunctors"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."retry" or (buildDepError "retry"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."SafeSemaphore" or (buildDepError "SafeSemaphore"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."unix-bytestring" or (buildDepError "unix-bytestring"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."unliftio" or (buildDepError "unliftio"))
          (hsPkgs."mmorph" or (buildDepError "mmorph"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."amazonka" or (buildDepError "amazonka"))
            (hsPkgs."amazonka-core" or (buildDepError "amazonka-core"))
            (hsPkgs."amazonka-s3" or (buildDepError "amazonka-s3"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."mismi-core" or (buildDepError "mismi-core"))
            (hsPkgs."mismi-core-test" or (buildDepError "mismi-core-test"))
            (hsPkgs."mismi-s3" or (buildDepError "mismi-s3"))
            (hsPkgs."mismi-s3-core" or (buildDepError "mismi-s3-core"))
            (hsPkgs."mismi-s3-core-test" or (buildDepError "mismi-s3-core-test"))
            (hsPkgs."mismi-p" or (buildDepError "mismi-p"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-bifunctors" or (buildDepError "transformers-bifunctors"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            ];
          buildable = true;
          };
        "test-io" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mismi-core" or (buildDepError "mismi-core"))
            (hsPkgs."mismi-core-test" or (buildDepError "mismi-core-test"))
            (hsPkgs."mismi-s3" or (buildDepError "mismi-s3"))
            (hsPkgs."mismi-s3-core" or (buildDepError "mismi-s3-core"))
            (hsPkgs."mismi-s3-core-test" or (buildDepError "mismi-s3-core-test"))
            (hsPkgs."mismi-p" or (buildDepError "mismi-p"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            ];
          buildable = true;
          };
        "test-reliability" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mismi-core" or (buildDepError "mismi-core"))
            (hsPkgs."mismi-core-test" or (buildDepError "mismi-core-test"))
            (hsPkgs."mismi-s3" or (buildDepError "mismi-s3"))
            (hsPkgs."mismi-p" or (buildDepError "mismi-p"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mismi-core" or (buildDepError "mismi-core"))
            (hsPkgs."mismi-core-test" or (buildDepError "mismi-core-test"))
            (hsPkgs."mismi-s3" or (buildDepError "mismi-s3"))
            (hsPkgs."mismi-p" or (buildDepError "mismi-p"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            ];
          buildable = true;
          };
        };
      };
    }