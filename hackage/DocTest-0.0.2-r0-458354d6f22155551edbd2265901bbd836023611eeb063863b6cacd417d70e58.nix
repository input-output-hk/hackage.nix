{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "DocTest"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "simon.hengel@web.de";
      author = "Simon Hengel";
      homepage = "http://code.haskell.org/~sih/code/DocTest.git/";
      url = "";
      synopsis = "Test interactive Haskell examples";
      description = "DocTest checks examples in source code comments.\nIt is modeled after doctest for Python\n(<http://docs.python.org/library/doctest.html>).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.parsec)
            (hsPkgs.haskell-src)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            ];
          };
        };
      };
    }