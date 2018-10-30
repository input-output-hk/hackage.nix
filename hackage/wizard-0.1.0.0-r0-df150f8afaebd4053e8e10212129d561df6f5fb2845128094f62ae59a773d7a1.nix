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
        name = "wizard";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 chessai";
      maintainer = "chessai1996@gmail.com";
      author = "chessai";
      homepage = "https://github.com/chessai/wizard.git";
      url = "";
      synopsis = "the fantastical wizard monoid";
      description = "A \"wizard\" can be defined as a program that\nprompts a user \"up front\" for multiple inputs\nand then performs several actions after all\ninput has been collected.\nThe idea is from Gabriel Gonzalez's blog post,\nhttp://www.haskellforall.com/2018/02/the-wizard-monoid.html.\nThis library provides a \"WizardT\" monad\ntransformer, that allows users to define\nwizards over different monads, which becomes\nsimilarly useful when that monad's `Monoid`\ninstance lifts the behaviour of the underlying\n`Monoid` into its own.";
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