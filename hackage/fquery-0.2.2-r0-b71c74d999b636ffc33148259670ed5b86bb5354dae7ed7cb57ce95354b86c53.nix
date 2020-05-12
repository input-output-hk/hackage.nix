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
      identifier = { name = "fquery"; version = "0.2.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "2006 David Wang, 2009-2016 Sergei Trofimovich";
      maintainer = "Sergei Trofimovich <slyfox@inbox.ru>";
      author = "David Wang <millimillenary@gmail.com>, Sergei Trofimovich <slyfox@inbox.ru>";
      homepage = "";
      url = "";
      synopsis = "Installed package query tool for Gentoo Linux";
      description = "Installed package query tool for Gentoo Linux\n\nHome page <http://home.exetel.com.au/tjaden/fquery/>";
      buildType = "Configure";
      };
    components = {
      exes = {
        "fquery" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }