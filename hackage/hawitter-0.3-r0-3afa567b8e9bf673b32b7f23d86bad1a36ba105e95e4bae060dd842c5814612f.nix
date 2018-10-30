{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hawitter";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daiki Handa <xanxys@gmail.com>";
      author = "Daiki Handa <xanxys@gmail.com>";
      homepage = "http://d.hatena.ne.jp/xanxys/20100318/1268917714";
      url = "";
      synopsis = "A twitter client for GTK+. Beta version.";
      description = "A slick twitter client for GTK. Features syntax highlighting of tweets, URL linking.\nAutomatic URL shortening and 'timeline modifier' will be implemented in future versions.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hawitter" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.gtk)
            (hsPkgs.glade)
            (hsPkgs.gconf)
            (hsPkgs.parsec)
            (hsPkgs.regex-compat)
            (hsPkgs.network)
            (hsPkgs.HTTP)
            (hsPkgs.json)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }