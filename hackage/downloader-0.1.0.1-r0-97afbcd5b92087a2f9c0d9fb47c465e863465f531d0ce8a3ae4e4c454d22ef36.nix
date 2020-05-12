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
      specVersion = "1.12";
      identifier = { name = "downloader"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Aditya Siram, 2019";
      maintainer = "aditya.siram@gmail.com";
      author = "Aditya Siram";
      homepage = "https://github.com/deech/downloader#readme";
      url = "";
      synopsis = "A small, low-dependency library that provides turn-key file download over HTTP and HTTPS.";
      description = "Please see the Hackage documentation at <http://hackage.haskell.org/package/downloader/docs/Network-HTTP-Download-File.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          ];
        buildable = true;
        };
      };
    }