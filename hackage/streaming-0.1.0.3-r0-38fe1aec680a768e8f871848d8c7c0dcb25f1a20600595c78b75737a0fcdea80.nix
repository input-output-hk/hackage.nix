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
      identifier = { name = "streaming"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "what_is_it_to_do_anything@yahoo.com";
      author = "michaelt";
      homepage = "https://github.com/michaelt/streaming";
      url = "";
      synopsis = "A general free monad transformer\noptimized for streaming applications.";
      description = "`Stream` can be used wherever `FreeT` is used. The compiler\nis better able to optimize operations written in\nterms of `Stream`.\n\nAn associated prelude of functions, closely following\n@Pipes.Prelude@ is focused on on employment with a base\nfunctor like @((,) a)@ (here called @Of a@) which generates\neffectful sequences or producers - @Pipes.Producer@,\n@Conduit.Source@, @IOStreams.InputStream@, @IOStreams.Generator@\nand the like.\n\nInteroperation with `pipes` is accomplished with this isomorphism:\n\n> Pipes.unfoldr Streaming.next :: Stream (Of a) m r -> Producer a m r\n> Stream.unfoldr Pipes.next    :: Producer a m r -> Stream (Of a) m r\n\nExit to `conduit` and `iostreams` is thus:\n\n> Conduit.unfoldM Streaming.uncons   :: Stream (Of a) m ()  -> Source m a\n> IOStreams.unfoldM Streaming.uncons :: Stream (Of a) IO () -> InputStream a";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      };
    }