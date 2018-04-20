{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "haskell-src-meta";
          version = "0.6.0.7";
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
            hsPkgs.pretty
            hsPkgs.syb
            hsPkgs.th-orphans
          ] ++ (if compiler.isGhc
            then [ hsPkgs.template-haskell ]
            else [
              hsPkgs.template-haskell
              hsPkgs.uniplate
            ]);
        };
      };
    }