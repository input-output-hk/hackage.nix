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
        version = "1.4.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniel Diaz (dhelta `dot` diaz `at` gmail `dot` com)";
      author = "Daniel Díaz";
      homepage = "";
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