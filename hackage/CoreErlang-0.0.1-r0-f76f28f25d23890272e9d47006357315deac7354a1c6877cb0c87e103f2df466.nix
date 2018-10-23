{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "CoreErlang";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2008, David Castro Pérez, Henrique Ferreiro García";
      maintainer = "Henrique Ferreiro García <hferreiro@udc.es>\nDavid Castro Pérez <dcastrop@udc.es>";
      author = "David Castro Pérez <dcastrop@udc.es>\nHenrique Ferreiro García <hferreiro@udc.es>";
      homepage = ".";
      url = "";
      synopsis = "Manipulating Core Erlang source code";
      description = "Facilities for manipulating Core Erlang source code:\nan abstract syntax, parser and pretty-printer.";
      buildType = "Simple";
    };
    components = {
      "CoreErlang" = {
        depends  = if flags.split-base
          then [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.parsec)
          ];
      };
    };
  }