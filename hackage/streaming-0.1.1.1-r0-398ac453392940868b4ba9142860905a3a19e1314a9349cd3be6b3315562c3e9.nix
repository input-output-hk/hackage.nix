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
      identifier = { name = "streaming"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "what_is_it_to_do_anything@yahoo.com";
      author = "michaelt";
      homepage = "https://github.com/michaelt/streaming";
      url = "";
      synopsis = "an elementary streaming prelude and a general monad transformer for streaming applications.";
      description = "@Streaming.Prelude@ exports an elementary streaming prelude; @Streaming@ exports a free monad transformer\noptimized for streaming applications and replacing @FreeT@. See the\n<https://hackage.haskell.org/package/streaming#readme readme> below\nfor an explanation. Elementary usage can be divined from the ghci examples in\n@Streaming.Prelude@\n\nThe simplest form of interoperation with <http://hackage.haskell.org/package/pipes pipes>\nis accomplished with this isomorphism:\n\n> Pipes.unfoldr Streaming.next        :: Stream (Of a) m r   -> Producer a m r\n> Streaming.unfoldr Pipes.next        :: Producer a m r      -> Stream (Of a) m r\n\nInteroperation with <http://hackage.haskell.org/package/io-streams io-streams> is thus:\n\n> Streaming.reread IOStreams.read     :: InputStream a       -> Stream (Of a) IO ()\n> IOStreams.unfoldM Streaming.uncons  :: Stream (Of a) IO () -> IO (InputStream a)\n\nA simple exit to <http://hackage.haskell.org/package/conduit conduit> would be, e.g.:\n\n> Conduit.unfoldM Streaming.uncons    :: Stream (Of a) m ()  -> Source m a\n\nThese conversions should never be more expensive than a single @>->@ or @=$=@. Further\npoints of comparison are discussed in the\n<https://hackage.haskell.org/package/streaming#readme readme>\nbelow.\n\nNote also the\n<https://hackage.haskell.org/package/streaming-bytestring streaming bytestring>\nand\n<https://hackage.haskell.org/package/streaming-utils streaming utils>\npackages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }