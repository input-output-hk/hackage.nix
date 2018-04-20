{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "type-functions";
          version = "0.2.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "© 2009–2010 Brandenburgische Technische Universität Cottbus; © 2011 Wolfgang Jeltsch";
        maintainer = "wolfgang@cs.ioc.ee";
        author = "Wolfgang Jeltsch";
        homepage = "http://darcs.wolfgang.jeltsch.info/haskell/type-functions";
        url = "http://hackage.haskell.org/packages/archive/type-functions/0.2.0.2/type-functions-0.2.0.2.tar.gz";
        synopsis = "Emulation of type-level functions";
        description = "This package supports emulation of type-level functions using defunctionalization.\nAll functions whose domain is a subkind of&#xA0;@*@ and whose codomain is&#xA0;@*@\nitself can be represented.\n\nFor detailed information, please refer to Subsection&#xA0;3.2 of the paper\n/Generic Record Combinators with Static Type Checking/.";
        buildType = "Simple";
      };
      components = {
        type-functions = {
          depends  = [
            hsPkgs.base
            hsPkgs.kinds
          ];
        };
      };
    }