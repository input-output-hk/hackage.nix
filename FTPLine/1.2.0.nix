{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "FTPLine";
          version = "1.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Daniel Diaz <danieldiaz@asofilak.es>";
        author = "Daniel Diaz";
        homepage = "http://ddiaz.asofilak.es/packages/FTPLine";
        url = "";
        synopsis = "A command-line FTP client.";
        description = "A command-line FTP client. Type @help@ for a list of commands. Online documentation at the homepage.\n\nChanges from last version:\n\n* Echoing of @stdin@ is turned off while running @pause@ command.\n\n* New field (@interactive@) in the state record.\n\n* New login method, with hidden password. Now haskeline dependency is @>= 0.6.3 && < 0.7@.\n\n* Added history.\n\n* Added a few notes in the @help@ command.";
        buildType = "Simple";
      };
      components = {
        exes = {
          FTPLine = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.ftphs
              hsPkgs.directory
              hsPkgs.network
              hsPkgs.haskeline
              hsPkgs.ansi-terminal
              hsPkgs.strict
              hsPkgs.bytestring
            ];
          };
        };
      };
    }