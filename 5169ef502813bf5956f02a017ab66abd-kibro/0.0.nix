{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "kibro";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Chris Done <chrisdone@gmail.com>";
        author = "Chris Done <chrisdone@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Web development framework.";
        description = "Web development framework.";
        buildType = "Simple";
      };
      components = {
        kibro = {
          depends  = [
            hsPkgs.base
            hsPkgs.HDBC
            hsPkgs.mtl
            hsPkgs.regex-compat
            hsPkgs.random
            hsPkgs.safe
            hsPkgs.xhtml
            hsPkgs.containers
            hsPkgs.fastcgi
            hsPkgs.cgi
            hsPkgs.HDBC-sqlite3
          ];
        };
        exes = {
          kibro = {
            depends  = [
              hsPkgs.base
              hsPkgs.regex-compat
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.haskell98
              hsPkgs.validate
              hsPkgs.process
            ];
          };
        };
      };
    }