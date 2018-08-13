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
      specVersion = "1.8";
      identifier = {
        name = "proc";
        version = "0.0.8";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2010 Andy Stewart";
      maintainer = "lazycat.manatee@gmail.com";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "Parse process information for Linux";
      description = "This library parse process information under /proc on Linux.";
      buildType = "Simple";
    };
    components = {
      "proc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.xformat)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.regex-tdfa)
          (hsPkgs.process)
          (hsPkgs.containers)
          (hsPkgs.strict)
          (hsPkgs.split)
        ];
      };
    };
  }