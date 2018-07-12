{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      full-haskell-antiquotes = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "language-c-quote";
          version = "0.12";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2006-2011 Harvard University\n(c) 2011-2013 Geoffrey Mainland\n(c) 2013 Manuel M. T. Chakravarty\n(c) 2013-2017 Drexel University";
        maintainer = "Geoffrey Mainland <mainland@drexel.edu>";
        author = "Geoffrey Mainland <mainland@drexel.edu>";
        homepage = "https://github.com/mainland/language-c-quote";
        url = "";
        synopsis = "C/CUDA/OpenCL/Objective-C quasiquoting library.";
        description = "This package provides a general parser for the C language, including most GCC\nextensions and some CUDA and OpenCL extensions as well as the entire Objective-C\nlanguage.";
        buildType = "Simple";
      };
      components = {
        "language-c-quote" = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.exception-mtl
            hsPkgs.exception-transformers
            hsPkgs.filepath
            hsPkgs.mainland-pretty
            hsPkgs.mtl
            hsPkgs.srcloc
            hsPkgs.syb
            hsPkgs.symbol
            hsPkgs.template-haskell
          ] ++ (if _flags.full-haskell-antiquotes
            then pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") hsPkgs.safe ++ [
              hsPkgs.haskell-src-meta
            ]
            else [
              hsPkgs.haskell-exp-parser
            ]);
          build-tools = pkgs.lib.optionals (compiler.isGhc && compiler.version.lt "7.4") [
            hsPkgs.buildPackages.alex
            hsPkgs.buildPackages.happy
          ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "7.4") [
            hsPkgs.buildPackages.alex
            hsPkgs.buildPackages.happy
          ];
        };
        tests = {
          "unit" = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.language-c-quote
              hsPkgs.mainland-pretty
              hsPkgs.srcloc
              hsPkgs.symbol
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }