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
      specVersion = "1.6";
      identifier = {
        name = "todos";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya V. Portnov";
      homepage = "http://gitorious.org/todos";
      url = "";
      synopsis = "Easy-to-use TODOs manager.";
      description = "todos is a simple TODO manager. TODO records theirself are described in\nplain-text file, and todos allows you to show only needed of\nthem. So, todos works as specialized `grep' utility.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "todos" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.utf8-string)
            (hsPkgs.containers)
            (hsPkgs.parsec)
            (hsPkgs.syb)
            (hsPkgs.mtl)
            (hsPkgs.ansi-terminal)
            (hsPkgs.Glob)
            (hsPkgs.time)
            (hsPkgs.regex-pcre)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.data-hash)
          ];
        };
      };
    };
  }