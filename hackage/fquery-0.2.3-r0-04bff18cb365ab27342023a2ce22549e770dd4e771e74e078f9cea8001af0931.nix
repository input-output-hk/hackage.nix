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
        name = "fquery";
        version = "0.2.3";
      };
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hashtables)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.regex-compat)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }