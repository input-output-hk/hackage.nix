{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "snap-auth-cli";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dima@dzhus.org";
      author = "Dmitry Dzhus";
      homepage = "https://github.com/dzhus/snap-auth-cli#readme";
      url = "";
      synopsis = "Command-line tool to manage Snap AuthManager database";
      description = "This utility provides command-line interface to user database of standard authentication system for the Snap web framework. You can create, read and update users, set passwords, roles and meta information. Currently only JsonFile backend is supported. Type `snap-auth-cli -?` to get usage information, or see README.md for details.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "snap-auth-cli" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.clientsession)
            (hsPkgs.cmdargs)
            (hsPkgs.snap)
            (hsPkgs.snaplet-sqlite-simple)
            (hsPkgs.sqlite-simple)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }