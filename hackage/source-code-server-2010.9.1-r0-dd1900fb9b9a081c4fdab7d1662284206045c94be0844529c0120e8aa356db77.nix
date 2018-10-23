{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "source-code-server";
        version = "2010.9.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "http://github.com/nfjinjing/source-code-server";
      url = "";
      synopsis = "The server backend for the source code iPhone app";
      description = "a reference implementation, such that an android equivalent is less of work";
      buildType = "Simple";
    };
    components = {
      exes = {
        "source-code-server" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.mps)
            (hsPkgs.json)
            (hsPkgs.directory)
            (hsPkgs.hack)
            (hsPkgs.hack-contrib)
            (hsPkgs.hack-handler-happstack)
            (hsPkgs.data-default)
            (hsPkgs.stm)
            (hsPkgs.loli)
            (hsPkgs.StateVar)
            (hsPkgs.bytestring)
            (hsPkgs.unix)
            (hsPkgs.curl)
            (hsPkgs.filepath)
            (hsPkgs.template-haskell)
            (hsPkgs.safe)
            (hsPkgs.time)
            (hsPkgs.HDBC-sqlite3)
            (hsPkgs.HDBC)
          ];
        };
      };
    };
  }