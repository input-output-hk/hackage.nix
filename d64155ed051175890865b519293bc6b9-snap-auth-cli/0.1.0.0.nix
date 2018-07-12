{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "snap-auth-cli";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dima@dzhus.org";
        author = "Dmitry Dzhus";
        homepage = "https://github.com/dzhus/snap-auth-cli";
        url = "";
        synopsis = "Command-line tool to manage Snap AuthManager database";
        description = "This utility provides command-line interface to user\ndatabase of standard authentication system for\nthe Snap web framework. You can create, read and\nupdate users, set passwords, roles and meta\ninformation. Currently only JsonFile backend is\nsupported. Type @snap-auth-cli -?@ to get usage\ninformation, or see\n<https://github.com/dzhus/snap-auth-cli/blob/master/README.org>\nfor details.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "snap-auth-cli" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.clientsession
              hsPkgs.cmdargs
              hsPkgs.snap
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.utf8-string
            ];
          };
        };
      };
    }