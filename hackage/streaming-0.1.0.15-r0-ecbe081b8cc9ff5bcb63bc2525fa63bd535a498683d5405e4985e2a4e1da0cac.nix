{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "streaming"; version = "0.1.0.15"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "what_is_it_to_do_anything@yahoo.com";
      author = "michaelt";
      homepage = "https://github.com/michaelt/streaming";
      url = "";
      synopsis = "a free monad transformer optimized for streaming applications";
      description = "@Stream@ can be used wherever @FreeT@ is used. The compiler's\nstandard range of optimizations work better for operations\nwritten in terms of `Stream`. @FreeT f m r@ / @Stream f m r@\nis of course extremely general, and many functor-general combinators\nare exported by the general module @Streaming@.\n\nSee the examples in @Streaming.Prelude@ for a sense of how\nsimple the library is to use and think about.\nThat module is focused on employment with such base functors\n(readings of the @f@ in @Stream f m r@) that express\ndifferent forms of effectful sequences. Some of these appear\nelsewhere under titles like\n\n> pipes:      Producer a m r, Producer a m (Producer a m r), FreeT (Producer a m) m r\n> io-streams: InputStream a, Generator a r\n> conduit:    Source m a, ConduitM () o m r\n\nand the like. @Streaming.Prelude@ closely follows @Pipes.Prelude@, but cleverly /omits the pipes/:\n\n> ghci> S.stdoutLn $ S.take 2 S.stdinLn\n> let's<Enter>\n> let's\n> stream<Enter>\n> stream\n\nAnd here we do a little /connect and resume/, as the streaming-io experts call it:\n\n> ghci> rest <- S.print $ S.splitAt 3 $ S.each [1..10]\n> 1\n> 2\n> 3\n> ghci> S.sum rest\n> 49\n\nSomehow, we didn't even need a four-character operator for that, nor advice\nabout best practices; just ordinary Haskell common sense.\n\nThe simplest form of interoperation with\n<http://hackage.haskell.org/package/pipes pipes>\nis accomplished with this isomorphism:\n\n> Pipes.unfoldr Streaming.next        :: Stream (Of a) m r   -> Producer a m r\n> Streaming.unfoldr Pipes.next        :: Producer a m r      -> Stream (Of a) m r\n\nInteroperation with\n<http://hackage.haskell.org/package/io-streams io-streams>\nis thus:\n\n> Streaming.reread IOStreams.read     :: InputStream a       -> Stream (Of a) IO ()\n> IOStreams.unfoldM Streaming.uncons  :: Stream (Of a) IO () -> IO (InputStream a)\n\nA simple exit to <http://hackage.haskell.org/package/conduit conduit> would be, e.g.:\n\n> Conduit.unfoldM Streaming.uncons    :: Stream (Of a) m ()  -> Source m a\n\nThese conversions should never be more expensive than a single @>->@ or @=$=@.\n\nAt a much more general level, we also of course have interoperation with\n<http://hackage.haskell.org/package/free free>:\n\n> Free.iterTM  Stream.wrap              :: FreeT f m a -> Stream f m a\n> Stream.iterTM Free.wrap               :: Stream f m a -> FreeT f m a\n\nFor some simple ghci examples, see the commentary throughout the Prelude module.\nFor slightly more advanced usage see the commentary in the haddocks of <https://hackage.haskell.org/package/streaming-bytestring streaming-bytestring>\nand e.g.\n<https://gist.github.com/michaelt/6c6843e6dd8030e95d58 these replicas> of shell-like programs from\nthe io-streams tutorial.\nHere's a simple <https://gist.github.com/michaelt/2dcea1ba32562c091357 streaming GET request> with\nintrinsically streaming byte streams.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }