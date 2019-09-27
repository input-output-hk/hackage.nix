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
      identifier = { name = "streaming"; version = "0.1.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "what_is_it_to_do_anything@yahoo.com";
      author = "michaelt";
      homepage = "https://github.com/michaelt/streaming";
      url = "";
      synopsis = "an elementary streaming prelude and general stream type.";
      description = "@Streaming.Prelude@ exports an elementary streaming prelude focused on\na simple \\\"source\\\" or \\\"producer\\\" type, namely @Stream (Of a) m r@.\nThis is a sort of effectful version of @([a],r)@ in which monadic action\nis interleaved between successive elements.\nThe main module, @Streaming@, exports a much more general type,\n@Stream f m r@, which can be used to stream successive distinct\nsteps characterized by /any/\nfunctor @f@, though we are here interested only in a limited range of\ncases.\n\nThe streaming-IO libraries have various devices for dealing\nwith effectful variants of @[a]@ or @([a],r)@. But it is only with\nthe general type @Stream f m r@, or some equivalent,\nthat one can envisage (for example) the connected streaming of their\nsorts of stream -- as one makes lists of lists in the Haskell\n@Prelude@ and @Data.List@. One needs some such type if we are\nto express properly streaming equivalents of e.g.\n\n> group :: Ord a => [a] -> [[a]]\n> chunksOf :: Int -> [a] -> [[a]]\n> lines :: [Char] -> [[Char]] -- but similarly with bytestring, etc.\n\nto mention a few obviously desirable operations. But once one grasps\nthe iterable stream concept needed to express those functions - to wit,\n@Stream f m r@ or some equivalent - then one will also see that,\nwith it, one is already in possession of a complete\nelementary streaming library - since one possesses @Stream ((,) a) m r@\nor equivalently @Stream (Of a) m r@. This\nis the type of a \\'generator\\' or \\'producer\\' or whatever\nyou call an effectful stream of items.\nThe present @Streaming.Prelude@ is thus the simplest streaming\nlibrary that can replicate anything like the API of the\n@Prelude@ and @Data.List@.\n\nThe emphasis of the library is on interoperation; for\nthe rest its advantages are: extreme simplicity and re-use of\nintuitions the user has gathered from mastery of @Prelude@ and\n@Data.List@. The two conceptual pre-requisites are some\ncomprehension of monad transformers and some familiarity\nwith \\'rank 2 types\\'.\n\nSee the\n<https://hackage.haskell.org/package/streaming#readme readme>\nbelow for an explanation, including the examples linked there.\nElementary usage can be divined from the ghci examples in\n@Streaming.Prelude@ and perhaps from this rough beginning of a\n<https://github.com/michaelt/streaming-tutorial/blob/master/tutorial.md tutorial>.\nNote also the\n<https://hackage.haskell.org/package/streaming-bytestring streaming bytestring>\nand\n<https://hackage.haskell.org/package/streaming-utils streaming utils>\npackages. Questions about usage can be put\nraised on StackOverflow with the tag @[haskell-streaming]@,\nor as an issue on Github, or on the\n<https://groups.google.com/forum/#!forum/haskell-pipes pipes list>\n(the package understands itself as part of the pipes \\'ecosystem\\'.)\n\nThe simplest form of interoperation with\n<http://hackage.haskell.org/package/pipes pipes>\nis accomplished with this isomorphism:\n\n> Pipes.unfoldr Streaming.next        :: Stream (Of a) m r   -> Producer a m r\n> Streaming.unfoldr Pipes.next        :: Producer a m r      -> Stream (Of a) m r\n\nInteroperation with\n<http://hackage.haskell.org/package/io-streams io-streams>\nis thus:\n\n> Streaming.reread IOStreams.read     :: InputStream a       -> Stream (Of a) IO ()\n> IOStreams.unfoldM Streaming.uncons  :: Stream (Of a) IO () -> IO (InputStream a)\n\nWith\n<http://hackage.haskell.org/package/conduit conduit>\none might use, e.g.:\n\n> Conduit.unfoldM Streaming.uncons                :: Stream (Of a) m ()  -> Source m a\n> Streaming.mapM_ Conduit.yield . hoist lift      :: Stream (Of o) m r -> ConduitM i o m r\n> (\$\$ Conduit.mapM_ Streaming.yield) . hoist lift :: Source m a -> Stream (Of a) m ()\n\nThese conversions should never be more expensive than a single @>->@ or @=\$=@.\n\nHere is a simple example (conceptually it is a bit advanced, maybe)\nthat runs a single underlying stream with several\nstreaming-io libraries at once, superimposing their effects\nwithout any accumulation:\n\n> module Main (main) where\n> import Streaming\n> import Pipes\n> import Data.Conduit\n> import qualified Streaming.Prelude as S\n> import qualified Data.Conduit.List as CL\n> import qualified Pipes.Prelude as P\n> import qualified System.IO.Streams as IOS\n> import Data.ByteString.Char8 (pack)\n> import Data.Function ((&))\n>\n> mkConduit  = CL.unfoldM S.uncons\n> mkPipe     = P.unfoldr S.next\n> mkIOStream = IOS.unfoldM S.uncons\n>\n> main = iostreamed where\n>   urstream = S.take 3 S.readLn :: Stream (Of Int) IO ()\n>   streamed = S.copy urstream & S.map (\\n -> \"streaming says: \" ++ show n)\n>                              & S.stdoutLn\n>   piped = runEffect \$\n>     mkPipe (S.copy streamed) >-> P.map (\\n -> \"pipes says: \" ++ show n)\n>                              >-> P.stdoutLn\n>   conduited =\n>     mkConduit (S.copy piped) \$\$ CL.map (\\n -> \"conduit says:  \" ++ show n)\n>                              =\$ CL.mapM_ (liftIO . putStrLn)\n>   iostreamed = do\n>     str0 <- mkIOStream conduited\n>     str1 <- IOS.map (\\n -> pack \$ \"io-streams says: \" ++ show n ++ \"\\n\") str0\n>     IOS.supply str1 IOS.stdout\n\nThis program successively parses three @Int@s from standard input,\nand /simulaneously/ passes them to (here trivial) stream-consuming\nprocesses from four different libraries, using the @copy@ function from\n@Streaming.Prelude@. I mark my own input with @/<Enter/>@ below:\n\n> >>> main\n> 1 <Enter>\n> streaming says: 1\n> pipes says: 1\n> conduit says:  1\n> io-streams says: 1\n> 2 <Enter>\n> streaming says: 2\n> pipes says: 2\n> conduit says:  2\n> io-streams says: 2\n> 3 <Enter>\n> streaming says: 3\n> pipes says: 3\n> conduit says:  3\n> io-streams says: 3\n> >>>\n\nOf course, I could as well have passed the stream to several\nindependent conduits; and I might have derived the original\nstream from a conduit @Source@ or pipes @Producer@ etc., using\none of the \\'conversion\\' functions above. Further\npoints of comparison with the going streaming-IO libraries\nare discussed in the\n<https://hackage.haskell.org/package/streaming#readme readme>\nbelow.\n\nHere are the results of some\n<https://gist.github.com/michaelt/f19bef01423b17f29ffd microbenchmarks>\nbased on the\n<https://github.com/ekmett/machines/blob/master/benchmarks/Benchmarks.hs benchmarks>\nincluded in the machines package:\n\n<<http://i.imgur.com/sSG5MvH.png>>\n\nBecause these are microbenchmarks for individual functions,\nthey represent a sort of \\\"worst case\\\"; many other factors can influence\nthe speed of a complex program.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."mmorph" or (buildDepError "mmorph"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      };
    }