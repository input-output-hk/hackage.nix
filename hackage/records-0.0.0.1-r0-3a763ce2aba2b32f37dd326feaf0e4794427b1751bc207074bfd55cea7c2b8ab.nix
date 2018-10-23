{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "records";
        version = "0.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "© 2007–2010 Brandenburgische Technische Universität Cottbus";
      maintainer = "jeltsch@tu-cottbus.de";
      author = "Wolfgang Jeltsch";
      homepage = "http://community.haskell.org/~jeltsch/records/";
      url = "http://hackage.haskell.org/packages/archive/records/0.0.0.0/records-0.0.0.0.tar.gz";
      synopsis = "A flexible record system";
      description = "This package provides a flexible record system which has some novel features:\n\n* Using record type families, the type system can be used to describe relationships\nbetween field types.\n\n* Record scheme induction permits the implementation of polymorphic record\ncombinators that work on whole records instead of only a fixed set of fields.\n\n* Subkind polymorphism for sorts makes it possible to impose varying restrictions on\nthe structure of field types.";
      buildType = "Simple";
    };
    components = {
      "records" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.kinds)
          (hsPkgs.type-functions)
        ];
      };
    };
  }