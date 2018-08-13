{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "grapefruit-records";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "© 2007–2009 Brandenburgische Technische Universität Cottbus\n© 2011–2012 Wolfgang Jeltsch";
      maintainer = "wolfgang@cs.ioc.ee";
      author = "Wolfgang Jeltsch";
      homepage = "http://grapefruit-project.org/";
      url = "http://hackage.haskell.org/packages/archive/grapefruit-records/0.1.0.2/grapefruit-records-0.1.0.2.tar.gz";
      synopsis = "A record system for Functional Reactive Programming";
      description = "Grapefruit is a library for Functional Reactive Programming (FRP) with a focus on\nuser interfaces. FRP makes it possible to implement reactive and interactive systems\nin a declarative style. To learn more about FRP, have a look at\n<http://haskell.org/haskellwiki/Functional_Reactive_Programming>.\n\nThis package provides a record system for use with FRP.";
      buildType = "Simple";
    };
    components = {
      "grapefruit-records" = {
        depends  = [
          (hsPkgs.arrows)
          (hsPkgs.base)
          (hsPkgs.grapefruit-frp)
        ];
      };
    };
  }