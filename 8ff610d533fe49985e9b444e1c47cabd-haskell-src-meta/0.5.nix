{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "haskell-src-meta";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Matt Morrow";
        maintainer = "Ben Millwood <haskell@benmachine.co.uk>";
        author = "Matt Morrow";
        homepage = "";
        url = "";
        synopsis = "Parse source to template-haskell abstract syntax.";
        description = "The translation from haskell-src-exts abstract syntax\nto template-haskell abstract syntax isn't 100% complete yet.";
        buildType = "Simple";
      };
      components = {
        haskell-src-meta = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-src-exts
            hsPkgs.template-haskell
            hsPkgs.pretty
            hsPkgs.syb
            hsPkgs.th-lift
          ];
        };
      };
    }