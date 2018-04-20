{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "FTPLine";
          version = "1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Daniel Diaz <danieldiaz@asofilak.es>";
        author = "Daniel Diaz";
        homepage = "http://ddiaz.asofilak.es/packages/FTPLine";
        url = "";
        synopsis = "A command-line FTP client.";
        description = "A command-line FTP client. Type @help@ for a list of commands. Online documentation at the homepage.\n\nChanges from last version:\n\n* Now, FTPLine shows a correct version number.\n\n* Changed @handres@ error handling.\n\n* Added error handling to @curdir@ operation.\n\n* Removed @underline@ function (It didn't has any effect).\n\n* A little change on the welcome message.";
        buildType = "Simple";
      };
      components = {
        exes = {
          FTPLine = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.MissingH
              hsPkgs.ftphs
              hsPkgs.directory
              hsPkgs.network
              hsPkgs.haskeline
              hsPkgs.ansi-terminal
              hsPkgs.deepseq
            ];
          };
        };
      };
    }