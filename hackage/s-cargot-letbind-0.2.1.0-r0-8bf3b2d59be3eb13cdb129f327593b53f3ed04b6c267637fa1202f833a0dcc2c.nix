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
        name = "s-cargot-letbind";
        version = "0.2.1.0";
      };
      license = "ISC";
      copyright = "2018 Kevin Quick";
      maintainer = "kquick@galois.com";
      author = "Kevin Quick";
      homepage = "https://github.com/GaloisInc/s-cargot-letbind";
      url = "";
      synopsis = "Enables let-binding and let-expansion for s-cargot defined S-expressions.";
      description = "This module allows let bindings to be introduced into the S-Expression\nsyntax.\n\nFor example, instead of:\n\n>    (concat (if (enabled x) (+ (width x) (width y)) (width y))\n>            \" meters\")\n\nthis can be re-written with let bindings:\n\n>    (let ((wy    (width y))\n>          (wboth (+ (width x) wy))\n>          (wide  (if (enabled x) wboth wy))\n>         )\n>      (concat wide \" meters\"))\n\nAs S-expressions grow larger, let-binding can help readability for\nthose expressions.  This module provides the 'discoverLetBindings'\nfunction that will convert an S-expression into one containing\nlet-bound variables, and the inverse function 'letExpand' which will\nexpand let-bound variables back into the expression.";
      buildType = "Simple";
    };
    components = {
      "s-cargot-letbind" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.s-cargot)
          (hsPkgs.text)
        ];
      };
      tests = {
        "s-cargot-printparselet" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.HUnit)
            (hsPkgs.s-cargot)
            (hsPkgs.s-cargot-letbind)
            (hsPkgs.text)
          ];
        };
      };
    };
  }