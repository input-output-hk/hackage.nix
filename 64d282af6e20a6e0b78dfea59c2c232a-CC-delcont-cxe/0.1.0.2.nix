{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "CC-delcont-cxe";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "shelarcy <shelarcy@gmail.com>";
        author = "Oleg Kiselyov";
        homepage = "";
        url = "";
        synopsis = "A monad transformers for multi-prompt delimited control";
        description = "Oleg Kiselyov's three new monad transformers for multi-prompt delimited control\n(released with his permission)\n\nThis library implements the superset of the interface described in\n*   /A Monadic Framework for Delimited Continuations/,\nR. Kent Dybvig, Simon Peyton Jones, and Amr Sabry\nJFP, v17, N6, pp. 687--730, 2007.\n<http://www.cs.indiana.edu/cgi-bin/techreports/TRNNN.cgi?trnum=TR615>\n\nThis library's \"Control.Monad.CC.CCCxe\" is derived as a CPS version of\n<http://hackage.haskell.org/package/CC-delcont-exc>'s Control.Monad.CC.CCExc.\n\"Control.Monad.CC.CCCxe\" is sometimes more efficient; it is always less perspicuous.\nBoth libraries provide the identical interface and are interchangeable. It seems\nthat CC-delcont-exc's  Control.Monad.CC.CCExc is faster at delimited control but\nimposes more overhead on the conventional code; \"Control.Monad.CC.CCCxe\" is dual.\nIt pays to use \"Control.Monad.CC.CCCxe\" in code with long stretches of determinism\npunctuated by fits and restarts.\n\nSee the original article at <http://okmij.org/ftp/continuations/implementations.html#CC-monads>\nfor more information.\n\nThis package split multi-prompt delimited control from\n<http://hackage.haskell.org/package/liboleg> for usability.";
        buildType = "Simple";
      };
      components = {
        "CC-delcont-cxe" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }