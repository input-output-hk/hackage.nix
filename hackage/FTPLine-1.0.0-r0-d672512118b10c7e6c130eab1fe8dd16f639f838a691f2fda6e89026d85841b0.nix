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
        name = "FTPLine";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "danieldiaz@asofilak.es";
      author = "Daniel Diaz";
      homepage = "http://ddiaz.asofilak.es/packages/FTPLine";
      url = "";
      synopsis = "A command-line FTP client.";
      description = "A command-line FTP client. Type @help@ for a list of commands.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "FTPLine" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.MissingH)
            (hsPkgs.ftphs)
            (hsPkgs.directory)
            (hsPkgs.network)
            (hsPkgs.haskeline)
            (hsPkgs.ansi-terminal)
          ];
        };
      };
    };
  }