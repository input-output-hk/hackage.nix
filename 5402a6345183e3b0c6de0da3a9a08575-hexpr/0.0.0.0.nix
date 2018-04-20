{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hexpr";
          version = "0.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "zankoku.okuno@gmail.com";
        author = "Zankoku Okuno";
        homepage = "https://github.com/Zankoku-Okuno/hexpr/";
        url = "";
        synopsis = "A framework for symbolic, homoiconic languages.";
        description = "H-expressions are a variant of S-expressions. Where s-expressions are atoms or nodes grouped into lists of length at least one, h-expressions, or hexprs, are grouped into lists of length two. This may seem very trivial, but this restriction makes it possible to treat parenthesis in the concrete syntax of hexprs merely as a manual override to the basic precedence rules, just as in mathematics. In particular, a suitable hexpr interpreter is capable of understanding eta-converted terms, which is quite unrealistic, if not impossible in an sexpr-based syntax. Thankfully, hexprs retain all the advantages of sexprs with respect to homoiconic syntax.\nHexprs on their own are fairly unhelpful, so we also have also included a configurable hexpr parser based on parsec. I wasn't long before mission creep set in, and a series of tools were produced to aid in creating a frontend for hexpr-based languages. See the package 'hexpr-examples' for some examples of the framework in action.\nI think H could stand for many things: the greek letter eta, hierarchical, happy, next in the alphabet after f, or perhaps hexpr == hexpr-expression. Where it comes from is unimportant, what is important is that we can easily the next generation of homoiconic languages.";
        buildType = "Simple";
      };
      components = {
        hexpr = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.either
            hsPkgs.parsec
            hsPkgs.data-ref
          ];
        };
      };
    }