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
      identifier = { name = "streaming"; version = "0.1.0.16"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "what_is_it_to_do_anything@yahoo.com";
      author = "michaelt";
      homepage = "https://github.com/michaelt/streaming";
      url = "";
      synopsis = "a free monad transformer optimized for streaming applications";
      description = "@Stream@ can be used wherever\n<https://hackage.haskell.org/package/free-4.12.1/docs/Control-Monad-Trans-Free.html FreeT>\nis used. The compiler's\nstandard range of optimizations work better for operations\nwritten in terms of `Stream`. @FreeT f m r@ / @Stream f m r@\nis of course extremely general, and many functor-general combinators\nare exported by the general module @Streaming@.\n\n@Streaming.Prelude@ is focused on elementary /streaming/ applications.\nHere the free iteration of the \\'base\\' functors\n(readings of the @f@ in @Stream f m r@) express\nforms of effectful sequence or succession. Some of types in question\nappear in the streaming IO libraries under titles like\n\n> pipes:      Producer a m r, Producer a m (Producer a m r), FreeT (Producer a m) m r\n> io-streams: InputStream a, Generator a r\n> conduit:    Source m a, ConduitM () o m r\n\n@Streaming.Prelude@ closely follows @Pipes.Prelude@, but cleverly /omits the pipes/:\n\n> ghci> S.stdoutLn \$ S.take 2 S.stdinLn\n> let's<Enter>\n> let's\n> stream<Enter>\n> stream\n\nAnd here we do a little /connect and resume/, as the streaming-io experts call it:\n\n> ghci> rest <- S.print \$ S.splitAt 3 \$ S.each [1..10]\n> 1\n> 2\n> 3\n> ghci> S.sum rest\n> 49\n\nSomehow, we didn't even need a four-character operator for that, nor advice\nabout best practices! - just ordinary Haskell common sense.\n\nThe simplest form of interoperation with\n<http://hackage.haskell.org/package/pipes pipes>\nis accomplished with this isomorphism:\n\n> Pipes.unfoldr Streaming.next        :: Stream (Of a) m r   -> Producer a m r\n> Streaming.unfoldr Pipes.next        :: Producer a m r      -> Stream (Of a) m r\n\n(@streaming@ can be mixed with @pipes@ wherever @pipes@\nitself employs @Control.Monad.Trans.Free@; speedups are frequently\nappreciable.) Interoperation with\n<http://hackage.haskell.org/package/io-streams io-streams>\nis thus:\n\n> Streaming.reread IOStreams.read     :: InputStream a       -> Stream (Of a) IO ()\n> IOStreams.unfoldM Streaming.uncons  :: Stream (Of a) IO () -> IO (InputStream a)\n\nA simple exit to <http://hackage.haskell.org/package/conduit conduit> would be, e.g.:\n\n> Conduit.unfoldM Streaming.uncons    :: Stream (Of a) m ()  -> Source m a\n\nThese conversions should never be more expensive than a single @>->@ or @=\$=@.\n\nAt a much more general level, we also of course have interoperation with\n<http://hackage.haskell.org/package/free free>:\n\n> Free.iterTM  Stream.wrap              :: FreeT f m a -> Stream f m a\n> Stream.iterTM Free.wrap               :: Stream f m a -> FreeT f m a\n\nFor some simple ghci examples, see the commentary throughout the Prelude module.\nFor slightly more advanced usage see the commentary in the haddocks of <https://hackage.haskell.org/package/streaming-bytestring streaming-bytestring>\nand e.g.\n<https://gist.github.com/michaelt/6c6843e6dd8030e95d58 these replicas> of shell-like programs from\nthe io-streams tutorial.\nHere's a simple <https://gist.github.com/michaelt/2dcea1ba32562c091357 streaming GET request> with\nintrinsically streaming byte streams.";
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
        };
      };
    }