{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "streaming";
        version = "0.1.0.12";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "what_is_it_to_do_anything@yahoo.com";
      author = "michaelt";
      homepage = "https://github.com/michaelt/streaming";
      url = "";
      synopsis = "A free monad transformer optimized for streaming applications.";
      description = "`Stream` can be used wherever `FreeT` is used. The compiler's\nstandard range of optimizations work better for operations\nwritten in terms of `Stream`. @FreeT f m r@ / @Stream f m r@\nis of course extremely general, and many functor-general combinators\nare exported by the general module @Streaming@.\n\nSee the examples in @Streaming.Prelude@ for a sense of how\nsimple the library is to use and think about.\nThat module is focused on employment with such base functors\n(readings of the @f@ in @Stream f m r@) that express\ndifferent forms of effectful sequences. Some of these appear\nelsewhere under titles like\n\n> pipes:      Producer a m r, Producer a m (Producer a m r), FreeT (Producer a m) m r\n> io-streams: InputStream a, Generator a r\n> conduit:    Source m a, ConduitM () o m r\n\nand the like. @Streaming.Prelude@ closely follows\n@Pipes.Prelude@, but cleverly /omits the pipes/.\n\nInteroperation with\n<http://hackage.haskell.org/package/pipes pipes>\nis accomplished with this isomorphism:\n\n> Pipes.unfoldr Streaming.next        :: Stream (Of a) m r   -> Producer a m r\n> Streaming.unfoldr Pipes.next        :: Producer a m r      -> Stream (Of a) m r\n\nInteroperation with\n<http://hackage.haskell.org/package/io-streams io-streams>\nis thus:\n\n> Streaming.reread IOStreams.read     :: InputStream a       -> Stream (Of a) IO ()\n> IOStreams.unfoldM Streaming.uncons  :: Stream (Of a) IO () -> IO (InputStream a)\n\nA simple exit to <http://hackage.haskell.org/package/conduit conduit> would be, e.g.:\n\n> Conduit.unfoldM Streaming.uncons    :: Stream (Of a) m ()  -> Source m a\n\nThese conversions should never be more expensive than a single @>->@ or @=\$=@.\n\nWith a much more general level, we also of course have interopetion with\n<http://hackage.haskell.org/package/free free>:\n\nFree.iterTM  Stream.wrap              :: FreeT f m a -> Stream f m a\nStream.iterTM Free.wrap               :: Stream f m a -> FreeT f m a\n\nSee the companion package <https://hackage.haskell.org/package/streaming-bytestring streaming-bytestring>\nFor some simple examples, see\n<https://gist.github.com/michaelt/6c6843e6dd8030e95d58 these replicas> of shell-like programs from\nthe <http://hackage.haskell.org/package/io-streams-1.3.2.0/docs/System-IO-Streams-Tutorial.html io-streams tutorial>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.mmorph)
          (hsPkgs.transformers)
        ];
      };
    };
  }