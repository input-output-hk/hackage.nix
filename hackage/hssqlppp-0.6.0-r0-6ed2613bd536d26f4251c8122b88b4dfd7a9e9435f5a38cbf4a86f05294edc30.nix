{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hssqlppp";
        version = "0.6.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2009-2015 Jake Wheat, Copyright 2011-2015 SQream";
      maintainer = "jakewheatmail@gmail.com";
      author = "Jake Wheat, SQream";
      homepage = "http://jakewheat.github.com/hssqlppp/";
      url = "";
      synopsis = "SQL parser and type checker";
      description = "SQL parser and type checker, targets PostgreSQL SQL and PL/pgSQL.\n\nPre alpha: works well and is stable for a subset of SQL, but there\nare lots of unfinished areas and the api is likely to change a lot\nfrom release to release at this time.\n\nDocumentation, examples on the homepage:\n<http://jakewheat.github.com/hssqlppp/>.\n\nChanges here: <https://github.com/JakeWheat/hssqlppp/blob/master/CHANGES>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.syb)
          (hsPkgs.text)
          (hsPkgs.uniplate)
          (hsPkgs.transformers)
          (hsPkgs.pretty-show)
        ];
      };
      tests = {
        "Tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.syb)
            (hsPkgs.template-haskell)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.uniplate)
            (hsPkgs.transformers)
            (hsPkgs.pretty-show)
          ];
        };
      };
    };
  }