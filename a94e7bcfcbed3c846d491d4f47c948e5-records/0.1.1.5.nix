{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "records";
          version = "0.1.1.5";
        };
        license = "BSD-3-Clause";
        copyright = "© 2007–2010 Brandenburgische Technische Universität Cottbus; © 2011 Wolfgang Jeltsch";
        maintainer = "wolfgang@cs.ioc.ee";
        author = "Wolfgang Jeltsch";
        homepage = "http://darcs.wolfgang.jeltsch.info/haskell/records";
        url = "http://hackage.haskell.org/packages/archive/records/0.1.1.5/records-0.1.1.5.tar.gz";
        synopsis = "A flexible record system";
        description = "This package provides a flexible record system which has some novel features:\n\n* Using record type families, the type system can be used to describe relationships\nbetween field types.\n\n* Record scheme induction permits the implementation of polymorphic record\ncombinators that work on whole records instead of only a fixed set of fields.\n\n* Subkind polymorphism for sorts makes it possible to impose varying restrictions on\nthe structure of field types.\n\nFor detailed information, please refer to the paper\n/Generic Record Combinators with Static Type Checking/.";
        buildType = "Simple";
      };
      components = {
        records = {
          depends  = [
            hsPkgs.base
            hsPkgs.kinds
            hsPkgs.type-functions
          ];
        };
      };
    }