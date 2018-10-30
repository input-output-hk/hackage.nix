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
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daiki Handa <xanxys@gmail.com>";
      author = "Daiki Handa <xanxys@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A twitter client for GTK+. Alpha version.";
      description = "THIS SOFTWARE IS STILL IN ALPHA STATE.\nA slick twitter client for GTK. Features syntax highlighting of tweets, URL linking/shortening and\n'timeline modifier'.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hawitter" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.regex-compat)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.gtk)
            (hsPkgs.glade)
            (hsPkgs.gconf)
            (hsPkgs.network)
            (hsPkgs.HTTP)
            (hsPkgs.json)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }