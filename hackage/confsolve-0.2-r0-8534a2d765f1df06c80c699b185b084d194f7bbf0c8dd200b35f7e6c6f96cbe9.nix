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
        name = "confsolve";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel.trstenjak@gmail.com";
      author = "Daniel Trstenjak";
      homepage = "";
      url = "";
      synopsis = "A command line tool for resolving conflicts of file synchronizers. Currently supported are Dropbox and Wuala.";
      description = "A command line tool for resolving conflicts of file synchronizers. Currently supported are Dropbox and Wuala.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "confsolve" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.regex-posix)
            (hsPkgs.time)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.haskell98)
            (hsPkgs.hashmap)
          ];
        };
      };
    };
  }