{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "algebra";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "© 2009 Wolfgang Jeltsch";
        maintainer = "jeltsch@informatik.tu-cottbus.de";
        author = "Wolfgang Jeltsch";
        homepage = "http://community.haskell.org/~jeltsch/algebra/";
        url = "http://hackage.haskell.org/packages/archive/algebra/0.0.0.0/algebra-0.0.0.0.tar.gz";
        synopsis = "Algebraic structures";
        description = "This package provides common algebraic structures in the form of type classes. In the\nfuture, there might be other things than type classes in this package. Currently,\nthere is only the class of semigroups.";
        buildType = "Simple";
      };
      components = {
        algebra = {
          depends  = [ hsPkgs.base ];
        };
      };
    }