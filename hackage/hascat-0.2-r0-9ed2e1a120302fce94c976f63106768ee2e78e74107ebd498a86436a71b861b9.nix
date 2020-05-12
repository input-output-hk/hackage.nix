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
      specVersion = "0";
      identifier = { name = "hascat"; version = "0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Björn Teegen 2006, Florian Micheler 2010";
      maintainer = "fmi@informatik.uni-kiel.de";
      author = "Björn Teegen, Florian Micheler";
      homepage = "";
      url = "";
      synopsis = "Hascat Web Server";
      description = "Hascat Web Server\n\nHow to install:\n\n1. install with cabal-install\n\n2. make a directory where you want the hascat-apps (hasclets) to be installed\n\n3. run\n\n\$ hascat-setup \\<directory\\>\n\n4. in that directory run:\n\n\$ hascat config.xml\n\n\nFor more information check my bachelor thesis:\n\n<http://www.informatik.uni-kiel.de/~fmi/bachelor.pdf>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hascat" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hascat-lib" or (errorHandler.buildDepError "hascat-lib"))
            (hsPkgs."hascat-system" or (errorHandler.buildDepError "hascat-system"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
            (hsPkgs."haxr" or (errorHandler.buildDepError "haxr"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."html" or (errorHandler.buildDepError "html"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hascat-setup" or (errorHandler.buildDepError "hascat-setup"))
            ];
          buildable = true;
          };
        };
      };
    }