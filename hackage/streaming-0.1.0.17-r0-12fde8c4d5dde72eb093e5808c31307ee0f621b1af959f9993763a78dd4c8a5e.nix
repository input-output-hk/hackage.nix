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
      identifier = { name = "streaming"; version = "0.1.0.17"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "what_is_it_to_do_anything@yahoo.com";
      author = "michaelt";
      homepage = "https://github.com/michaelt/streaming";
      url = "";
      synopsis = "a free monad transformer optimized for streaming applications";
      description = "__The free stream on a streamable functor__\n\n@Stream@ can be used wherever\n<https://hackage.haskell.org/package/free-4.12.1/docs/Control-Monad-Trans-Free.html FreeT>\nis used. The compiler's\nstandard range of optimizations work better for operations\nwritten in terms of `Stream`. @FreeT f m r@ / @Stream f m r@\nis of course extremely general, and many functor-general combinators\nare exported by the general module @Streaming@.\n\n@Streaming.Prelude@ is focused on elementary /streaming/ applications.\nHere the free iteration of the \\'base\\' functors\n(readings of the @f@ in @Stream f m r@) express\nforms of effectful sequence or succession. Some of types in question\nappear in the streaming IO libraries under titles like\n\n> pipes:      Producer a m r, Producer a m (Producer a m r), FreeT (Producer a m) m r\n> io-streams: InputStream a, Generator a r\n> conduit:    Source m a, ConduitM () o m r\n\n@Streaming.Prelude@ closely follows @Pipes.Prelude@, but cleverly /omits the pipes/:\n\n> ghci> S.stdoutLn \$ S.take 2 S.stdinLn\n> let's<Enter>\n> let's\n> stream<Enter>\n> stream\n\nAnd here we do a little /connect and resume/, as the streaming-io experts call it:\n\n> ghci> rest <- S.print \$ S.splitAt 3 \$ S.each [1..10]\n> 1\n> 2\n> 3\n> ghci> S.sum rest\n> 49\n\nSomehow, we didn't even need a four-character operator for that, nor advice\nabout best practices! - just ordinary Haskell common sense.\n\n__Didn't I hear that free monads are horrible?__\n\nIf @Stream f m r@ is instantiated to @Stream f Identity m r@ then we have\nthe standard /free monad construction/. This is subject to certain familiar\nobjections from an efficiency perspective; efforts have been made to\nsubstitute exotic cps-ed implementations and so forth.\n\nIn fact, the standard fast talk about /retraversing binds/ and /quadratic explosions/ and\n/costly appends/, and so on become transparent nonsense with @Stream f m r@\nin its streaming use. The insight needed to see this is basically nil: Where @m@ is read as\n@IO@, or some transformed @IO@, then the dreaded /retraversing of the binds/\nin a stream expression would involve repeating all the past actions. Don't worry, to get e.g. the\nsecond chunk of bytes from a handle, you won't need to start over and get the first\none again! The first chunk has vanished into an unrepeatable past.\n\nAll of the difficulties a streaming library is attempting to avoid\nare concentrated in the deep irrationality of\n\n> sequence :: (Monad m, Traversable t) => t (m a) -> m (t a)\n\nIn the streaming context, this becomes\n\n> sequence :: Monad m, Functor f => Stream f m r -> Stream f m r\n> sequence = id\n\nIt is of course easy enough to define\n\n> accumulate :: Monad m, Functor f => Stream f m r -> m (Stream f Identity r)\n\nor @reifyBinds@, as you might call it. Small experience will\nteach the user how to avoid or control the sort of accumulation\ncharacteristic of @sequence@ in its various guises e.g. @mapM f = sequence . map f@ and\n@traverse f = sequence . fmap f@ and  @replicateM n = sequence . replicate n@.\nSee for example the types of\n\n> Control.Monad.replicateM :: Int -> m a -> m [a]\n> Streaming.Prelude.replicateM :: Int -> m a -> Stream (Of a) m ()\n\nIf you want to tempt fate and replicate the irrationality of @Control.Monad.replicateM@,\nthen sure, you can write the hermaphroditic, chimerical\n\n> accumulate . Streaming.Prelude.replicateM :: Int -> m a -> m (Stream (Of a) Identity ())\n\nbut once you know how to operate with a stream directly you will see less and less point\nin what is called /extracting the (structured) value from IO/. With @sequence@ and @traverse@,\nwe accumulate a structure holding pure values from a structure holding monadic\nvalues. Why bother when you have intrinsically monadic structures? @Stream f m r@\ngives you an immense body of such structures and a simple discipline for working with them.\n\n__Interoperation with the streaming-io libraries__\n\nThe simplest form of interoperation with\n<http://hackage.haskell.org/package/pipes pipes>\nis accomplished with this isomorphism:\n\n> Pipes.unfoldr Streaming.next        :: Stream (Of a) m r   -> Producer a m r\n> Streaming.unfoldr Pipes.next        :: Producer a m r      -> Stream (Of a) m r\n\n(@streaming@ can be mixed with @pipes@ wherever @pipes@\nitself employs @Control.Monad.Trans.Free@; speedups are frequently\nappreciable.) Interoperation with\n<http://hackage.haskell.org/package/io-streams io-streams>\nis thus:\n\n> Streaming.reread IOStreams.read     :: InputStream a       -> Stream (Of a) IO ()\n> IOStreams.unfoldM Streaming.uncons  :: Stream (Of a) IO () -> IO (InputStream a)\n\nA simple exit to <http://hackage.haskell.org/package/conduit conduit> would be, e.g.:\n\n> Conduit.unfoldM Streaming.uncons    :: Stream (Of a) m ()  -> Source m a\n\nThese conversions should never be more expensive than a single @>->@ or @=\$=@.\n\nAt a much more general level, we also of course have interoperation with\n<http://hackage.haskell.org/package/free free>:\n\n> Free.iterTM  Stream.wrap              :: FreeT f m a -> Stream f m a\n> Stream.iterTM Free.wrap               :: Stream f m a -> FreeT f m a\n\n__Examples__\n\nFor some simple ghci examples, see the commentary throughout the Prelude module.\nFor slightly more advanced usage see the commentary in the haddocks of <https://hackage.haskell.org/package/streaming-bytestring streaming-bytestring>\nand e.g.\n<https://gist.github.com/michaelt/6c6843e6dd8030e95d58 these replicas> of shell-like programs from\nthe io-streams tutorial.\nHere's a simple <https://gist.github.com/michaelt/2dcea1ba32562c091357 streaming GET request> with\nintrinsically streaming byte streams.\n\n__Problems__\n\nQuestions about this library can be put as issues through the github site or\non the <https://groups.google.com/forum/#!forum/haskell-pipes pipes mailing list>.\n(This library understands itself as part of the pipes \"ecosystem.\")";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."mmorph" or (buildDepError "mmorph"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }