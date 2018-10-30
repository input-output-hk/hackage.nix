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
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daiki Handa <xanxys@gmail.com>";
      author = "Daiki Handa <xanxys@gmail.com>";
      homepage = "http://d.hatena.ne.jp/xanxys/20100321/1269137834";
      url = "";
      synopsis = "A twitter client for GTK+. Beta version.";
      description = "A slick twitter client for GTK. Features syntax highlighting of tweets and URL linking.\nAutomatic URL shortening and 'timeline modifier' will be implemented in future versions.";
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
            (hsPkgs.regex-base)
            (hsPkgs.regex-tdfa)
            (hsPkgs.network)
            (hsPkgs.HTTP)
            (hsPkgs.json)
            (hsPkgs.utf8-string)
            (hsPkgs.bytestring)
            (hsPkgs.hoauth)
            (hsPkgs.SHA)
            (hsPkgs.base64-string)
            (hsPkgs.clock)
          ];
        };
      };
    };
  }