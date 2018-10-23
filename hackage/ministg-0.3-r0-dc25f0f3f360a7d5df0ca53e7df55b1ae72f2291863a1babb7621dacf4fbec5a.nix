{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "ministg";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009, 2010, 2011 Bernard James Pope";
      maintainer = "florbitous@gmail.com";
      author = "Bernard James Pope";
      homepage = "http://www.haskell.org/haskellwiki/Ministg";
      url = "";
      synopsis = "an interpreter for an operational semantics for the STG machine.";
      description = "ministg is an interpreter for a simple high-level operational semantics for the STG machine. The\nsemantics is taken from the research paper \"Making a fast curry: push/enter vs. eval/apply\nfor higher-order languages\", by Simon Marlow and Simon Peyton Jones. It provides the option\nto trace the execution of the interpreter, rendering each step in a HTML file. This is useful\nfor understanding the behaviour of the STG machine, and also useful for experimenting with\nchanges to the machine. It also supports an experimental call stack tracing facility.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ministg" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.monads-tf)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.xhtml)
            (hsPkgs.directory)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }