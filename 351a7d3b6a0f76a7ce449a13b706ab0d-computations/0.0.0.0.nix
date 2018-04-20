{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.16";
        identifier = {
          name = "computations";
          version = "0.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "© 2012–2015 Wolfgang Jeltsch";
        maintainer = "wolfgang@cs.ioc.ee";
        author = "Wolfgang Jeltsch";
        homepage = "http://darcs.wolfgang.jeltsch.info/haskell/computations";
        url = "http://hackage.haskell.org/packages/archive/computations/0.0.0.0/computations-0.0.0.0.tar.gz";
        synopsis = "Advanced notions of computation";
        description = "This package provides a framework for computations with certain\nconsistency constraints. Based on this framework, it implements\nresourceful computations, which are an alternative to the @IO@\nmondad. In the case of resourceful computations, the consistency\nconstraint is a single-use policy, also known as linearity.";
        buildType = "Simple";
      };
      components = {
        computations = {
          depends  = [ hsPkgs.base ];
        };
      };
    }