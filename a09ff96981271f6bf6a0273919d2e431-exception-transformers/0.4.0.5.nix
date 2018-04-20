{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "exception-transformers";
          version = "0.4.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009-2010 Harvard University\n(c) 2011-2016 Geoffrey Mainland";
        maintainer = "Geoffrey Mainland <mainland@drexel.edu>";
        author = "Geoffrey Mainland <mainland@drexel.edu>";
        homepage = "";
        url = "";
        synopsis = "Type classes and monads for unchecked extensible exceptions.";
        description = "This package provides type classes, a monad and a monad\ntransformer that support unchecked extensible exceptions as\nwell as asynchronous exceptions. It is compatible with\nthe transformers package.";
        buildType = "Simple";
      };
      components = {
        exception-transformers = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.transformers
            hsPkgs.transformers-compat
          ];
        };
        tests = {
          unit = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.base
              hsPkgs.exception-transformers
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.transformers
              hsPkgs.transformers-compat
            ];
          };
        };
      };
    }