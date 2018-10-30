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
        name = "successors";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "2017 Joachim Breitner";
      maintainer = "mail@joachim-breitner.de";
      author = "Joachim Breitner";
      homepage = "https://github.com/nomeata/haskell-successors";
      url = "";
      synopsis = "An applicative functor to manage successors";
      description = "This package provides the\n'Control.Applicative.Successors.Succs' functor. It models\na node in a graph together with its successors. The\n@Applicative@ (and @Monad@) instances are designed so that\nthe successors of the resulting value take exactly one\nstep, either in the left or the right argument to @\\<*\\>@\n(or @>>=@).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }