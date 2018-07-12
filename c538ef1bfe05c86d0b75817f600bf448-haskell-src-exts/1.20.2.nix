{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-src-exts";
          version = "1.20.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Matthew Pickering <matthewtpickering@gmail.com>";
        author = "Niklas Broberg";
        homepage = "https://github.com/haskell-suite/haskell-src-exts";
        url = "";
        synopsis = "Manipulating Haskell source: abstract syntax, lexer, parser, and pretty-printer";
        description = "Haskell-Source with Extensions (HSE, haskell-src-exts)\nis a standalone parser for Haskell. In addition to\nstandard Haskell, all extensions implemented in GHC are supported.\n\nApart from these standard extensions,\nit also handles regular patterns as per the HaRP extension\nas well as HSX-style embedded XML syntax.";
        buildType = "Simple";
      };
      components = {
        "haskell-src-exts" = {
          depends  = [
            hsPkgs.array
            hsPkgs.pretty
            hsPkgs.cpphs
            hsPkgs.base
            hsPkgs.ghc-prim
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups;
          build-tools = [
            hsPkgs.buildPackages.happy
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.haskell-src-exts
              hsPkgs.smallcheck
              hsPkgs.tasty
              hsPkgs.tasty-smallcheck
              hsPkgs.tasty-golden
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.pretty-show
            ];
          };
        };
      };
    }