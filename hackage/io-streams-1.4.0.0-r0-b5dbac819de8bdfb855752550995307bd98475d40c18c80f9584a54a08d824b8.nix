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
    flags = { nointeractivetests = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "io-streams"; version = "1.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregory Collins <greg@gregorycollins.net>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Simple, composable, and easy-to-use stream I/O";
      description = "/Overview/\n\nThe io-streams library contains simple and easy-to-use primitives for I/O\nusing streams. Most users will want to import the top-level convenience\nmodule \"System.IO.Streams\", which re-exports most of the library:\n\n@\nimport           System.IO.Streams (InputStream, OutputStream)\nimport qualified System.IO.Streams as Streams\n@\n\nFor first-time users, @io-streams@ comes with an included tutorial, which can\nbe found in the \"System.IO.Streams.Tutorial\" module.\n\n/Features/\n\nThe @io-streams@ user API has two basic types: @InputStream a@ and\n@OutputStream a@, and three fundamental I/O primitives:\n\n@\n\\-\\- read an item from an input stream\nStreams.read :: InputStream a -> IO (Maybe a)\n\n\\-\\- push an item back to an input stream\nStreams.unRead :: a -> InputStream a -> IO ()\n\n\\-\\- write to an output stream\nStreams.write :: Maybe a -> OutputStream a -> IO ()\n@\n\nStreams can be transformed by composition and hooked together with provided combinators:\n\n@\nghci> Streams.fromList [1,2,3::Int] >>= Streams.map (*10) >>= Streams.toList\n[10,20,30]\n@\n\nStream composition leaves the original stream accessible:\n\n@\nghci> input \\<- Streams.fromByteString \\\"long string\\\"\nghci> wrapped \\<- Streams.takeBytes 4 input\nghci> Streams.read wrapped\nJust \\\"long\\\"\nghci> Streams.read wrapped\nNothing\nghci> Streams.read input\nJust \\\" string\\\"\n@\n\nSimple types and operations in the IO monad mean straightforward and simple\nexception handling and resource cleanup using Haskell standard library\nfacilities like 'Control.Exception.bracket'.\n\n@io-streams@ comes with:\n\n* functions to use files, handles, concurrent channels, sockets, lists,\nvectors, and more as streams.\n\n* a variety of combinators for wrapping and transforming streams, including\ncompression and decompression using zlib, controlling precisely how many\nbytes are read from or written to a stream, buffering output using\nbytestring builders, folds, maps, filters, zips, etc.\n\n* support for parsing from streams using @attoparsec@.\n\n* support for spawning processes and communicating with them using streams.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."bytestring-builder" or (buildDepError "bytestring-builder"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."zlib-bindings" or (buildDepError "zlib-bindings"))
          ];
        };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bytestring-builder" or (buildDepError "bytestring-builder"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."zlib-bindings" or (buildDepError "zlib-bindings"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            ];
          };
        };
      };
    }