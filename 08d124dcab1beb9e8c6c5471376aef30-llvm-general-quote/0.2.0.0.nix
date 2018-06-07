{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "llvm-general-quote";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Timo von Holtz 2014";
        maintainer = "Timo von Holtz <tvh@tvholtz.de>";
        author = "Timo von Holtz <tvh@tvholtz.de>";
        homepage = "https://github.com/tvh/llvm-general-quote";
        url = "";
        synopsis = "QuasiQuoting llvm code for llvm-general";
        description = "This package provides a QuasiQuotation for llvm-general.";
        buildType = "Simple";
      };
      components = {
        llvm-general-quote = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.symbol
            hsPkgs.srcloc
            hsPkgs.mainland-pretty
            hsPkgs.llvm-general-pure
            hsPkgs.syb
            hsPkgs.template-haskell
            hsPkgs.haskell-src-meta
            hsPkgs.th-lift
            hsPkgs.split
          ];
          build-tools = [
            hsPkgs.buildPackages.alex
            hsPkgs.buildPackages.happy
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.HUnit
              hsPkgs.llvm-general-quote
              hsPkgs.llvm-general-pure
              hsPkgs.containers
            ];
          };
        };
      };
    }