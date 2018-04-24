{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      safe-st = true;
      strict-modifyref = true;
      ghc-conc-sync = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "var";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013 Andy Sonnenburg";
        maintainer = "Andy Sonnenburg <andy22286@gmail.com>";
        author = "Andy Sonnenburg";
        homepage = "http://github.com/sonyandy/var";
        url = "";
        synopsis = "Mutable variables and tuples";
        description = "This package defines the classes 'Var' and 'MTuple' of variables and tuples\nmutable within appropriate monads, as well as some instances of these classes.";
        buildType = "Simple";
      };
      components = {
        var = {
          depends  = ((([
            hsPkgs.base
            hsPkgs.transformers
          ] ++ pkgs.lib.optional _flags.safe-st hsPkgs.base) ++ pkgs.lib.optional _flags.ghc-conc-sync hsPkgs.base) ++ pkgs.lib.optional _flags.strict-modifyref hsPkgs.base) ++ pkgs.lib.optional (compiler.isGhc && (compiler.version.ge "7.2" && compiler.version.lt "7.6")) hsPkgs.ghc-prim;
        };
        tests = {
          properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.var
            ];
          };
        };
        benchmarks = {
          boxed = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.array
              hsPkgs.var
            ];
          };
          unboxed = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.array
              hsPkgs.var
            ];
          };
          mean = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.var
            ];
          };
          user = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.array
              hsPkgs.deepseq
              hsPkgs.var
            ] ++ pkgs.lib.optional (compiler.isGhc && (compiler.version.ge "7.2" && compiler.version.lt "7.6")) hsPkgs.ghc-prim;
          };
        };
      };
    }