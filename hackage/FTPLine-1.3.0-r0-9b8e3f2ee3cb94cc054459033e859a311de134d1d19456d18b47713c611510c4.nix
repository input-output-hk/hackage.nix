{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "FTPLine";
        version = "1.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniel Diaz <danieldiaz@asofilak.es>";
      author = "Daniel Diaz";
      homepage = "http://ddiaz.asofilak.es/packages/FTPLine";
      url = "";
      synopsis = "A command-line FTP client.";
      description = "A command-line FTP client. Type @help@ for a list of commands. Online documentation at the homepage.\n\nChanges from the last version:\n\n* Now, mtl dependency is == 2.0.*.\n\n* Due to the update to mtl-2, now haskeline dependency is >= 0.6.3.2 && < 0.7.\n\n* New feature: Reestablishing of last connection and login.\n\n* Current mode (local or remote) is displayed when switching between them.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "FTPLine" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.ftphs)
            (hsPkgs.directory)
            (hsPkgs.network)
            (hsPkgs.haskeline)
            (hsPkgs.ansi-terminal)
            (hsPkgs.strict)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }