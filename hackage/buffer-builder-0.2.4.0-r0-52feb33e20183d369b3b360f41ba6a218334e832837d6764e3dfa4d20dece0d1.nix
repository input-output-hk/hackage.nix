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
      identifier = { name = "buffer-builder"; version = "0.2.4.0"; };
      license = "BSD-3-Clause";
      copyright = "IMVU Inc., Chad Austin, Andy Friesen";
      maintainer = "chad@chadaustin.me";
      author = "Chad Austin, Andy Friesen";
      homepage = "https://github.com/chadaustin/buffer-builder";
      url = "";
      synopsis = "Library for efficiently building up buffers, one piece at a time";
      description = "\"Data.BufferBuilder\" is an efficient library for incrementally building\nup 'ByteString's, one chunk at a time.  Early benchmarks show it\nis over twice as fast as ByteString Builder, primarily because\n'BufferBuilder' is built upon an ST-style restricted monad and\nmutable state instead of ByteString Builder's monoidal AST.\n\nInternally, BufferBuilder is backed by a few C functions.\nExamination of GHC's output shows nearly optimal code generation\nwith no intermediate thunks -- and thus, continuation passing and\nits associated indirect jumps and stack traffic only occur when\nBufferBuilder is asked to append a non-strict ByteString.\n\nI benchmarked four approaches with a URL encoding benchmark:\n\n* State monad, concatenating ByteStrings: 6.98 us\n\n* State monad, ByteString Builder: 2.48 us\n\n* Crazy explicit RealWorld baton passing with unboxed state: 28.94 us (GHC generated really awful code for this, but see the revision history for the technique)\n\n* C + FFI + ReaderT: 1.11 us\n\nUsing BufferBuilder is very simple:\n\n> import qualified Data.BufferBuilder as BB\n>\n> let byteString = BB.runBufferBuilder \$ do\n>       BB.appendBS \"http\"\n>       BB.appendChar8 '/'\n>       BB.appendBS \"//\"\n\nThis package also provides \"Data.BufferBuilder.Utf8\" for generating UTF-8 buffers\nand \"Data.BufferBuilder.Json\" for encoding data structures into JSON.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."buffer-builder" or (buildDepError "buffer-builder"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-th" or (buildDepError "tasty-th"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            ];
          buildable = true;
          };
        "tinyjson" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."buffer-builder" or (buildDepError "buffer-builder"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          buildable = true;
          };
        "tinyjson2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."buffer-builder" or (buildDepError "buffer-builder"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."buffer-builder" or (buildDepError "buffer-builder"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          buildable = true;
          };
        "json-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."buffer-builder" or (buildDepError "buffer-builder"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."json-builder" or (buildDepError "json-builder"))
            ];
          buildable = true;
          };
        "url" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."buffer-builder" or (buildDepError "buffer-builder"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }