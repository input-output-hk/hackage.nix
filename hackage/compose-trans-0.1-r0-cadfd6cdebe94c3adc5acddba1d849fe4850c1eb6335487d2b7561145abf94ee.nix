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
      specVersion = "1.2.3";
      identifier = {
        name = "compose-trans";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "miguelimo38@yandex.ru";
      author = "Miguel Mitrofanov";
      homepage = "";
      url = "";
      synopsis = "Composable monad transformers";
      description = "A version of monad transformers that (a) allows one to convince the type checker that transformer application is a monad, and (b) doesn't need lots of boilerplate to add a new transformer. It's supposed to play nicely with @Control.Monad.Trans@.\n\nIn order to make a new transformer (say, @T@) an instance of @TransM@ (@TransP@, @TransF@) class, all you have to do is:\n\n* define @instance MonadTrans T@ &#x2014; which you've probably done already\n\n* define @instance Monad m => Monad (T m)@ &#x2014; also something quite common (for @TransP@ and @TransF@ you'd need another instance for @MonadPlus@ and @MonadFix@, respectively).\n\n* write @instance Trans T where transMInst = instM@ &#x2014; which is exactly one line of boilerplate. Sorry about that.\n\nAfter that, you can use your new and shiny transformer in compositions, like @ReaderT Char :. T :. WriterT String@ &#x2014; and such a composition would automagically become a monad transformer.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }