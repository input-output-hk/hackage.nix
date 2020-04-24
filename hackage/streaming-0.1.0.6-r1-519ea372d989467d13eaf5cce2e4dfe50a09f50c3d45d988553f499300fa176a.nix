{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "streaming"; version = "0.1.0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "what_is_it_to_do_anything@yahoo.com";
      author = "michaelt";
      homepage = "https://github.com/michaelt/streaming";
      url = "";
      synopsis = "A free monad transformer optimized for streaming applications.";
      description = "`Stream` can be used wherever `FreeT` is used. The compiler's\nstandard range of optimizations work better for operations\nwritten in terms of `Stream`. See the examples in @Streaming.Prelude@\nfor a sense of how simple the library is to use and think about.\n\n@Streaming.Prelude@ closely follows\n@Pipes.Prelude@, but cleverly /omits the pipes/. It is focused\non employment with a base functors which generate\neffectful sequences: e.g.\n\n> pipes:      Producer a m r, Producer a m (Producer a m r), FreeT (Producer a m) m r\n> io-streams: InputStream a, Generator a r\n> conduit:    Source m a, ConduitM () o m r\n\nand the like.\n\nInteroperation with\n<http://hackage.haskell.org/package/pipes pipes>\nis accomplished with this isomorphism:\n\n> Pipes.unfoldr Streaming.next        :: Stream (Of a) m r   -> Producer a m r\n> Streaming.unfoldr Pipes.next        :: Producer a m r      -> Stream (Of a) m r\n\n(If you don't have @pipes-HEAD@, inline the definition of <https://github.com/Gabriel439/Haskell-Pipes-Library/blob/master/src/Pipes/Prelude.hs#L909 unfoldr>.)\n\nInteroperation with\n<http://hackage.haskell.org/package/io-streams io-streams>\nis thus:\n\n> Streaming.reread IOStreams.read     :: InputStream a       -> Stream (Of a) IO ()\n> IOStreams.unfoldM Streaming.uncons  :: Stream (Of a) IO () -> IO (InputStream a)\n\nThe purposes of the separate @Generator a r@ type can as well be met with\n@Stream (Of a) m r@, which admits more complex manipulations and should\nbe somewhat friendlier to the compiler.\n\nA simple exit to <http://hackage.haskell.org/package/conduit conduit> would be, e.g.:\n\n> Conduit.unfoldM Streaming.uncons    :: Stream (Of a) m ()  -> Source m a\n\nThese conversions should never be more expensive than a single @>->@ or @=\$=@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."mmorph" or ((hsPkgs.pkgs-errors).buildDepError "mmorph"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      };
    }