{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "archiver"; version = "0.3"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
          ];
        buildable = true;
        };
      exes = {
        "archiver" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }