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
        name = "iyql";
        version = "0.0.5.4";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Diego Souza <dsouza+iyql at bitforest.org>";
      author = "Diego Souza <dsouza+iyql at bitforest.org>";
      homepage = "";
      url = "";
      synopsis = "CLI (command line interface) to YQL";
      description = "Similar to popular database frontend interfaces like sqlite3, this\nproject provides a full featured CLI for YQL.\nIt extends YQL introducing the concept of of location functions.\nThese have the same concept of YQL functions except they are\nintercepted by the program itself and executed locally. For\ninstance, changing the format to json or turning diagnostics on\nare examples of such functions.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "iyql" = {
          depends  = [
            (hsPkgs.haskell98)
            (hsPkgs.base)
            (hsPkgs.hoauth)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.containers)
            (hsPkgs.utf8-string)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.mtl)
            (hsPkgs.xml)
            (hsPkgs.old-locale)
            (hsPkgs.binary)
            (hsPkgs.parsec)
            (hsPkgs.haskeline)
          ];
        };
      };
    };
  }