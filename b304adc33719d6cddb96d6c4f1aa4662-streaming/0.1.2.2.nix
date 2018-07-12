{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "streaming";
          version = "0.1.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "what_is_it_to_do_anything@yahoo.com";
        author = "michaelt";
        homepage = "https://github.com/michaelt/streaming";
        url = "";
        synopsis = "an elementary streaming prelude and a general monad transformer for streaming applications.";
        description = "@Streaming.Prelude@ exports an elementary streaming prelude; @Streaming@ exports a free monad transformer\noptimized for streaming applications and replacing @FreeT@. See the\n<https://hackage.haskell.org/package/streaming#readme readme> below\nfor an explanation. Elementary usage can be divined from the ghci examples in\n@Streaming.Prelude@ and from the remarks somewhat theoretical\n<https://hackage.haskell.org/package/streaming#readme readme>\nbelow, including the examples linked there. Note also the\n<https://hackage.haskell.org/package/streaming-bytestring streaming bytestring>\nand\n<https://hackage.haskell.org/package/streaming-utils streaming utils>\npackages.\n\nThe simplest form of interoperation with <http://hackage.haskell.org/package/pipes pipes>\nis accomplished with this isomorphism:\n\n> Pipes.unfoldr Streaming.next        :: Stream (Of a) m r   -> Producer a m r\n> Streaming.unfoldr Pipes.next        :: Producer a m r      -> Stream (Of a) m r\n\nInteroperation with <http://hackage.haskell.org/package/io-streams io-streams> is thus:\n\n> Streaming.reread IOStreams.read     :: InputStream a       -> Stream (Of a) IO ()\n> IOStreams.unfoldM Streaming.uncons  :: Stream (Of a) IO () -> IO (InputStream a)\n\nA simple exit to <http://hackage.haskell.org/package/conduit conduit> would be, e.g.:\n\n> Conduit.unfoldM Streaming.uncons    :: Stream (Of a) m ()  -> Source m a\n\nThese conversions should never be more expensive than a single @>->@ or @=\$=@. Further\npoints of comparison are discussed in the\n<https://hackage.haskell.org/package/streaming#readme readme>\nbelow.\n\nHere are some results for an\n<https://gist.github.com/michaelt/f19bef01423b17f29ffd expansion>\nof the little\n<https://github.com/ekmett/machines/blob/master/benchmarks/Benchmarks.hs benchmarks>\nincluded in the machines package:\n\n<<http://i.imgur.com/sSG5MvH.png>>\n";
        buildType = "Simple";
      };
      components = {
        "streaming" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.mmorph
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.time
          ];
        };
      };
    }