{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      interrupt = true;
      server = true;
      new-comp = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "gf";
          version = "3.4";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "";
        author = "";
        homepage = "http://www.grammaticalframework.org/";
        url = "";
        synopsis = "Grammatical Framework";
        description = "GF, Grammatical Framework, is a programming language for multilingual grammar applications";
        buildType = "Custom";
      };
      components = {
        "gf" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.fst
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.random
            hsPkgs.pretty
            hsPkgs.mtl
          ];
        };
        exes = {
          "gf" = {
            depends  = ([
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.fst
              hsPkgs.directory
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.old-locale
              hsPkgs.process
              hsPkgs.pretty
              hsPkgs.mtl
              hsPkgs.haskeline
              hsPkgs.parallel
            ] ++ pkgs.lib.optionals _flags.server [
              hsPkgs.httpd-shed
              hsPkgs.network
              hsPkgs.utf8-string
              hsPkgs.json
              hsPkgs.cgi
            ]) ++ (if system.isWindows
              then [ hsPkgs.Win32 ]
              else [ hsPkgs.unix ]);
            build-tools = [
              hsPkgs.buildPackages.happy
            ];
          };
        };
      };
    }