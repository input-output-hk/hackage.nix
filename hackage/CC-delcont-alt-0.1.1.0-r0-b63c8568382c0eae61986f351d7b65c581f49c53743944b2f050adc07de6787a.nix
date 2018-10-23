{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "CC-delcont-alt";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "shelarcy <shelarcy@gmail.com>";
      author = "Oleg Kiselyov";
      homepage = "";
      url = "";
      synopsis = "Three new monad transformers for multi-prompt delimited control";
      description = "Oleg Kiselyov's three new monad transformers for multi-prompt delimited control\n(released with his permission)\n\nThis library implements the superset of the interface described in\n*   /A Monadic Framework for Delimited Continuations/,\nR. Kent Dybvig, Simon Peyton Jones, and Amr Sabry\nJFP, v17, N6, pp. 687--730, 2007.\n<http://www.cs.indiana.edu/cgi-bin/techreports/TRNNN.cgi?trnum=TR615>\n\nSee the original article at <http://okmij.org/ftp/continuations/implementations.html#CC-monads>\nfor more information.\n\nThis package split multi-prompt delimited control from\n<http://hackage.haskell.org/package/liboleg> for usability.";
      buildType = "Simple";
    };
    components = {
      "CC-delcont-alt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.CC-delcont-ref)
          (hsPkgs.CC-delcont-exc)
          (hsPkgs.CC-delcont-cxe)
        ];
      };
      tests = {
        "DocTest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.CC-delcont-alt)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-doctest)
          ];
        };
      };
    };
  }