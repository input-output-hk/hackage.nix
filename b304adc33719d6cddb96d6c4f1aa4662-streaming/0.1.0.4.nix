{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "streaming";
        version = "0.1.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "what_is_it_to_do_anything@yahoo.com";
      author = "michaelt";
      homepage = "https://github.com/michaelt/streaming";
      url = "";
      synopsis = "A free monad transformer optimized for streaming applications.";
      description = "`Stream` can be used wherever `FreeT` is used. The compiler\nis better able to optimize operations written in\nterms of `Stream`.\n\nSee the examples in @Streaming.Prelude@ for a sense of things.\nIt closely follows\n@Pipes.Prelude@, and focused on on employment with a base\nfunctor like @((,) a)@ (here called @Of a@) which generates\neffectful sequences or producers - @Pipes.Producer@,\n@Conduit.Source@, @IOStreams.InputStream@, @IOStreams.Generator@\nand the like.\n\nInteroperation with @pipes@ is accomplished with this isomorphism, which\nuses @Pipes.Prelude.unfoldr@ from @HEAD@:\n\n> Pipes.unfoldr Streaming.next        :: Stream (Of a) m r   -> Producer a m r\n> Streaming.unfoldr Pipes.next        :: Producer a m r      -> Stream (Of a) m r\n\nInteroperation with `iostreams` is thus:\n\n> Streaming.reread IOStreams.read     :: InputStream a       -> Stream (Of a) IO ()\n> IOStreams.unfoldM Streaming.uncons  :: Stream (Of a) IO () -> IO (InputStream a)\n\nfor example. A simple exit to conduit would be, e.g.:\n\n> Conduit.unfoldM Streaming.uncons    :: Stream (Of a) m ()  -> Source m a";
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