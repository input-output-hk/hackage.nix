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
      specVersion = "1.0";
      identifier = { name = "fquery"; version = "0.2.1.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "2006 David Wang, 2009 Sergei Trofimovich";
      maintainer = "Sergei Trofimovich <slyfox@inbox.ru>";
      author = "David Wang <millimillenary@gmail.com>, Sergei Trofimovich <slyfox@inbox.ru>";
      homepage = "";
      url = "";
      synopsis = "Installed package query tool for Gentoo Linux";
      description = "Installed package query tool for Gentoo Linux\n\nHome page <http://home.exetel.com.au/tjaden/fquery/>\n\nPublic repository is at <http://repo.or.cz/w/fquery.git>";
      buildType = "Configure";
      };
    components = {
      exes = {
        "fquery" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }