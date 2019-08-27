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
      specVersion = "1.18";
      identifier = { name = "hackage-diff"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(C) 2014 Tim C. Schroeder";
      maintainer = "www.blitzcode.net";
      author = "Tim C. Schroeder";
      homepage = "https://github.com/blitzcode/hackage-diff";
      url = "";
      synopsis = "Compare the public API of different versions of a Hackage library";
      description = "Please see <https://github.com/blitzcode/hackage-diff github.com/blitzcode/hackage-diff> for a user's manual.\n\nSample output\n\n> Downloading Hoogle DBs...\n> Parsing Hoogle DBs...\n> Comparing Hoogle DBs...\n>\n> --- Diff for | 0.2 → 0.3.5.2 | ---\n>\n> + Data.Serialize.IEEE754\n>   + getFloat32be :: Get Float\n>   + getFloat32le :: Get Float\n>   + getFloat64be :: Get Double\n>   + getFloat64le :: Get Double\n>   + putFloat32be :: Float -> Put\n>   + putFloat32le :: Float -> Put\n>   + putFloat64be :: Double -> Put\n>   + putFloat64le :: Double -> Put\n> × Data.Serialize\n>   + instance Serialize a => GSerialize (K1 i a)\n>   + instance GSerialize a => GSerialize (M1 i c a)\n>   + instance (GSerialize a, GSerialize b) => GSerialize (a :*: b)\n>   + instance GSerialize U1\n>   + instance GSerialize a => GetSum (C1 c a)\n>   + instance (GetSum a, GetSum b, GSerialize a, GSerialize b) => GetSum (a :+: b)\n>   + instance GSerialize a => PutSum (C1 c a)\n>   + instance (PutSum a, PutSum b, GSerialize a, GSerialize b) => PutSum (a :+: b)\n>   + instance SumSize (C1 c a)\n>   + instance (SumSize a, SumSize b) => SumSize (a :+: b)\n>   + decodeLazy :: Serialize a => ByteString -> Either String a\n>   + encodeLazy :: Serialize a => a -> ByteString\n>   - data Get a\n>   - type Put = PutM ()\n>   - type Putter a = a -> Put\n>   - getWord8 :: Get Word8\n>   - putWord8 :: Putter Word8\n> × Data.Serialize.Get\n>   + Done :: r -> ByteString -> Result r\n>   + instance Eq More\n>   + Fail :: String -> Result r\n>   + instance Functor Result\n>   + Partial :: (ByteString -> Result r) -> Result r\n>   + data Result r\n>   + instance Show r => Show (Result r)\n>   + ensure :: Int -> Get ByteString\n>   + runGetLazy :: Get a -> ByteString -> Either String a\n>   + runGetLazyState :: Get a -> ByteString -> Either String (a, ByteString)\n>   + runGetPartial :: Get a -> ByteString -> Result a\n>   × New: isolate :: Int -> Get a -> Get a\n>     Old: isolate :: String -> Int -> Get a -> Get a\n> × Data.Serialize.Put\n>   + runPutLazy :: Put -> ByteString\n>   + runPutMLazy :: PutM a -> (a, ByteString)\n> · Data.Serialize.Builder\n>\n> [+ Added] [- Removed] [× Modified] [· Unmodified]";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hackage-diff" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."cpphs" or (buildDepError "cpphs"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."async" or (buildDepError "async"))
            ];
          };
        };
      };
    }