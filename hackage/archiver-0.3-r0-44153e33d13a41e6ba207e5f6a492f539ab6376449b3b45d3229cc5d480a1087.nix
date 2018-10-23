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
        name = "archiver";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gwern <gwern0@gmail.com>";
      author = "Gwern";
      homepage = "";
      url = "";
      synopsis = "Archive supplied URLs in WebCite & Internet Archive";
      description = "archiver is a daemon which will process a specified text file,\neach line of which is a URL, and will (randomly) one by one request that\nthe URLs be archived or spidered by <http://www.webcitation.org> and\n<http://www.archive.org> for future reference.\n\nBecause the interface is a simple text file, this can be combined\nwith other scripts; for example, a script using Sqlite to extract\nvisited URLs from Firefox, or a program extracting URLs from Pandoc\ndocuments.";
      buildType = "Simple";
    };
    components = {
      "archiver" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.HTTP)
          (hsPkgs.curl)
        ];
      };
      exes = {
        "archiver" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.random)
          ];
        };
      };
    };
  }