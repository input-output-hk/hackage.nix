{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "fquery";
        version = "0.2.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "2006 David Wang, 2009 Sergei Trofimovich";
      maintainer = "Sergei Trofimovich <slyfox@inbox.ru>";
      author = "David Wang <millimillenary@gmail.com>, Sergei Trofimovich <slyfox@inbox.ru>";
      homepage = "";
      url = "";
      synopsis = "Installed package query tool for Gentoo Linux";
      description = "Installed package query tool for Gentoo Linux\nHome page http://home.exetel.com.au/tjaden/fquery/\nPublic repository is http://repo.or.cz/w/fquery.git";
      buildType = "Configure";
    };
    components = {
      exes = {
        "fquery" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.parsec)
            (hsPkgs.unix)
            (hsPkgs.regex-compat)
            (hsPkgs.process)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }