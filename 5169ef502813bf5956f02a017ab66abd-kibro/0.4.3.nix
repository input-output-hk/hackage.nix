{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "kibro";
          version = "0.4.3";
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
        "kibro" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.regex-compat
            hsPkgs.regexpr
            hsPkgs.random
            hsPkgs.safe
            hsPkgs.xhtml
            hsPkgs.containers
            hsPkgs.fastcgi
            hsPkgs.cgi
            hsPkgs.data-default
          ];
        };
        exes = {
          "kibro" = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.haskell98
              hsPkgs.process
              hsPkgs.strict
              hsPkgs.unix
              hsPkgs.ConfigFile
            ];
          };
        };
      };
    }