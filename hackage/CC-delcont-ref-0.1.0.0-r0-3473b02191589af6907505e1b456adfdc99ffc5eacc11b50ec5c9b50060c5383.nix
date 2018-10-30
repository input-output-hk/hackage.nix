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
        name = "CC-delcont-ref";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "shelarcy <shelarcy@gmail.com>";
      author = "Oleg Kiselyov";
      homepage = "";
      url = "";
      synopsis = "A monad transformers for multi-prompt delimited control using refercence cells";
      description = "This library implements the superset of the interface described in\n*   /A Monadic Framework for Delimited Continuations/,\nR. Kent Dybvig, Simon Peyton Jones, and Amr Sabry\nJFP, v17, N6, pp. 687--730, 2007.\n<http://www.cs.indiana.edu/cgi-bin/techreports/TRNNN.cgi?trnum=TR615>\n\nThis library is closest to the interface of Dybvig, Peyton Jones and Sabry.\n\"Control.Monad.CC.CCRef\" is derived from the definitional interpreter using\nthe implementation techniques described and justified in the FLOPS 2010 paper.\nThe monad transformer 'CC' implemented by \"Control.Monad.CC.CCRef\" requires\nthe base monad to support reference cells. In other words, the base monad\nmust be a member of the type class 'Mutable': that is, must be 'IO', 'ST',\n'STM' or their transformer. \"Control.Monad.CC.CCRef\" adds to the original\ninterface the frequently used function 'abortP' as a primitive.\n\nSee the original article at <http://okmij.org/ftp/continuations/implementations.html#CC-monads>\nfor more information.\n\nThis package split multi-prompt delimited control from\n<http://hackage.haskell.org/package/liboleg> for usability.";
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