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
        name = "hssqlppp";
        version = "0.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2009-2011 Jake Wheat";
      maintainer = "jakewheatmail@gmail.com";
      author = "Jake Wheat";
      homepage = "http://jakewheat.github.com/hssqlppp/";
      url = "";
      synopsis = "SQL parser and type checker";
      description = "SQL parser and type checker, targets PostgreSQL SQL and PL/pgSQL.\n\nDocumentation, examples on the homepage:\n<http://jakewheat.github.com/hssqlppp/>.\n\nChanges here: <https://github.com/JakeWheat/hssqlppp/blob/master/CHANGES>";
      buildType = "Simple";
    };
    components = {
      "hssqlppp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.syb)
          (hsPkgs.uniplate)
          (hsPkgs.transformers)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }