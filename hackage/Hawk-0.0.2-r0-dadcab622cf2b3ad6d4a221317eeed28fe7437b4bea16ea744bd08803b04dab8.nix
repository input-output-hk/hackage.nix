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
        name = "Hawk";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Björn Peemöller <fh-wedel@gmx.de>, Stefan Roggensack, Alexander Treptow <alextreptow@gmx.de>";
      author = "Björn Peemöller, Stefan Roggensack, Alexander Treptow";
      homepage = "";
      url = "";
      synopsis = "Haskell Web Application Kit";
      description = "A library and framework to create Web Applications with Haskell";
      buildType = "Simple";
    };
    components = {
      "Hawk" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HDBC)
          (hsPkgs.template-haskell)
          (hsPkgs.hslogger)
          (hsPkgs.hslogger-template)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.hack)
          (hsPkgs.data-default)
          (hsPkgs.time)
          (hsPkgs.hxt)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.HTTP)
          (hsPkgs.cgi)
          (hsPkgs.SHA)
          (hsPkgs.dataenc)
          (hsPkgs.HDBC-sqlite3)
          (hsPkgs.network)
          (hsPkgs.MonadCatchIO-mtl)
          (hsPkgs.convertible)
          (hsPkgs.regex-posix)
          (hsPkgs.json-b)
          (hsPkgs.bytestring-trie)
        ];
      };
    };
  }