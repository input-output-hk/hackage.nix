{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "lax";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "© 2007, 2008 Brandenburg University of Technology, Cottbus;\n© 2011       Wolfgang Jeltsch";
        maintainer = "wolfgang@cs.ioc.ee";
        author = "Wolfgang Jeltsch";
        homepage = "http://darcs.wolfgang.jeltsch.info/haskell/lax";
        url = "http://hackage.haskell.org/packages/archive/lax/0.1.0.2/lax-0.1.0.2.tar.gz";
        synopsis = "Lax arrows";
        description = "Lax arrows are variants of other arrows which are &#x201C;less strict&#x201D; than\nthe original arrows.  They can be used, for example, to produce I\\/O fixpoints in\nsituations where @fixIO@ would fail.";
        buildType = "Simple";
      };
      components = {
        lax = {
          depends  = [ hsPkgs.base ];
        };
      };
    }