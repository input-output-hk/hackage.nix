{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "streaming";
        version = "0.1.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "what_is_it_to_do_anything@yahoo.com";
      author = "michaelt";
      homepage = "https://github.com/michaelt/streaming";
      url = "";
      synopsis = "A free monad transformer optimized for streaming applications.";
      description = "`Stream` can be used wherever `FreeT` is used. The compiler\nis better able to optimize operations written in\nterms of `Stream`.\n\nSee the examples in @Streaming.Prelude@ for a sense\nof how simple the library is to use and think about.\n@Streaming.Prelude@ closely follows\n@Pipes.Prelude@, but cleverly omits the pipes. It is focused\non employment with a base functors which generate\neffectful sequences: i.e., things like\n\n* @Pipes.Producer@\n\n* @Conduit.Source@\n\n* @IOStreams.InputStream@\n\n* @IOStreams.Generator@\n\nInteroperation with\n<http://hackage.haskell.org/package/pipes pipes>\nis accomplished with this isomorphism which\nuses @Pipes.Prelude.unfoldr@ from @HEAD@:\n\n> Pipes.unfoldr Streaming.next        :: Stream (Of a) m r   -> Producer a m r\n> Streaming.unfoldr Pipes.next        :: Producer a m r      -> Stream (Of a) m r\n\n(If you don't have @pipes-HEAD@, inline the definition of <https://github.com/Gabriel439/Haskell-Pipes-Library/blob/master/src/Pipes/Prelude.hs#L909 unfoldr>.)\n\nInteroperation with\n<http://hackage.haskell.org/package/io-streams io-streams>\nis thus:\n\n> Streaming.reread IOStreams.read     :: InputStream a       -> Stream (Of a) IO ()\n> IOStreams.unfoldM Streaming.uncons  :: Stream (Of a) IO () -> IO (InputStream a)\n\nfor example. A simple exit to <http://hackage.haskell.org/package/conduit conduit> would be, e.g.:\n\n> Conduit.unfoldM Streaming.uncons    :: Stream (Of a) m ()  -> Source m a\n\nThese conversions should never be more expensive than a single @>->@ or @=\$=@.";
      buildType = "Simple";
    };
    components = {
      "streaming" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.mmorph)
          (hsPkgs.transformers)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }