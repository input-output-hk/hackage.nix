{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "language-c-quote"; version = "0.4.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2006-2011 Harvard University\n(c) 2011-2012 Geoffrey Mainland";
      maintainer = "mainland@eecs.harvard.edu";
      author = "Geoffrey Mainland <mainland@eecs.harvard.edu>";
      homepage = "http://www.eecs.harvard.edu/~mainland/";
      url = "";
      synopsis = "C/CUDA/OpenCL quasiquoting library.";
      description = "This package provides a general parser for the C language, including most GCC\nextensions and some CUDA and OpenCL extensions.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.exception-mtl)
          (hsPkgs.exception-transformers)
          (hsPkgs.filepath)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.mainland-pretty)
          (hsPkgs.mtl)
          (hsPkgs.srcloc)
          (hsPkgs.syb)
          (hsPkgs.symbol)
          (hsPkgs.template-haskell)
          ];
        build-tools = (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "7.4") [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex))
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy))
          ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "7.4") [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex))
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy))
          ];
        };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.language-c-quote)
            (hsPkgs.srcloc)
            (hsPkgs.symbol)
            ];
          };
        };
      };
    }