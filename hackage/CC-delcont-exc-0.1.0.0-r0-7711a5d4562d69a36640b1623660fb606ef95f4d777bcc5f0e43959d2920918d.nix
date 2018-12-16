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
      specVersion = "1.8";
      identifier = {
        name = "CC-delcont-exc";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "shelarcy <shelarcy@gmail.com>";
      author = "Oleg Kiselyov";
      homepage = "";
      url = "";
      synopsis = "A monad transformers for multi-prompt delimited control";
      description = "This library implements the superset of the interface described in\n*   /A Monadic Framework for Delimited Continuations/,\nR. Kent Dybvig, Simon Peyton Jones, and Amr Sabry\nJFP, v17, N6, pp. 687--730, 2007.\n<http://www.cs.indiana.edu/cgi-bin/techreports/TRNNN.cgi?trnum=TR615>\n\nThis library is the most direct implementation of the bubble-up reduction\nsemantics of multi-prompt delimited control. The library stands out in not\nbeing based on the continuation monad. Rather, the monad of \"Control.Monad.CC.CCExc\"\nis an extension of the 'Error' monad: a monad for restartable exceptions.\nThe library offers not one monad transformer but a family ('CC' 'p')\nparameterized by the prompt flavor 'p' . The library defines several prompt\nflavors; the users are welcome to define their own.\n\nSee the original article at <http://okmij.org/ftp/continuations/implementations.html#CC-monads>\nfor more information.\n\nThis package split multi-prompt delimited control from\n<http://hackage.haskell.org/package/liboleg> for usability.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }