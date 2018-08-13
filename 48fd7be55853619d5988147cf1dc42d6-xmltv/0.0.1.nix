{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "xmltv";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "per.odlund@gmail.com";
      author = "Per Odlund";
      homepage = "http://github.com/dagle/hs-xmltv";
      url = "";
      synopsis = "Show tv channels in the terminal";
      description = "A program for showing whats on tv in the terminal using xmltv.\nComes with a lib and a program to fetch and prettyprint the info.";
      buildType = "Simple";
    };
    components = {
      "xmltv" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.xml)
        ];
      };
      exes = {
        "tv" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.xml)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.terminfo)
            (hsPkgs.wl-pprint-terminfo)
            (hsPkgs.old-locale)
            (hsPkgs.wl-pprint-extras)
            (hsPkgs.configurator)
            (hsPkgs.filepath)
            (hsPkgs.xdg-basedir)
            (hsPkgs.http-client)
            (hsPkgs.network-uri)
            (hsPkgs.unix)
            (hsPkgs.split)
          ];
        };
      };
    };
  }