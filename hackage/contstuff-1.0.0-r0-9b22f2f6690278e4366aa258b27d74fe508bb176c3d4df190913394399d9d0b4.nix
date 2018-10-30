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
      specVersion = "1.6";
      identifier = {
        name = "contstuff";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <es@ertes.de>";
      author = "Ertugrul Söylemez <es@ertes.de>";
      homepage = "http://haskell.org/haskellwiki/Contstuff";
      url = "";
      synopsis = "Fast, easy to use CPS-based monad transformers";
      description = "This library implements fast and easy to use CPS-based monad\ntransformers.  Most of the usual monad transformers are implemented,\nincluding ChoiceT, ContT, EitherT, MaybeT and StateT.  Because of\nthe design of this library, many other monad transformers are just\nspecial cases of those, including e.g. WriterT.\nThe Control.ContStuff.Simple module also provides simplified monad\ntransformer wrappers, which hide the underlying CPS, so you get the\nfull performance, but with a simplified interface.  Currently the\nsimplified monad transformers are implemented as type synonyms, so\ntheir flexibility is slightly limited.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
        ];
      };
    };
  }