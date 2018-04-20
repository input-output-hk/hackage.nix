{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "exception-transformers";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008-2010 Harvard University";
        maintainer = "mainland@eecs.harvard.edu";
        author = "Geoffrey Mainland <mainland@eecs.harvard.edu>";
        homepage = "http://www.eecs.harvard.edu/~mainland/";
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
          ];
        };
      };
    }