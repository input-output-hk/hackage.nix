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
      specVersion = "1.2";
      identifier = {
        name = "extemp";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "amsay@amsay.net";
      author = "Sam Anklesaria";
      homepage = "http://patch-tag.com/r/salazar/extemp";
      url = "";
      synopsis = "automated printing for extemp speakers";
      description = "Extemp speakers conventionally must repetitively print from the same news services week after week, afterwords sorting the results by news area in a time consuming, labor intensive process. This package builds a web app automates the process.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "extemp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.smartGroup)
            (hsPkgs.bytestring)
            (hsPkgs.MaybeT)
            (hsPkgs.HTTP)
            (hsPkgs.containers)
            (hsPkgs.stringsearch)
            (hsPkgs.happstack-server)
            (hsPkgs.happstack-state)
            (hsPkgs.happstack-util)
            (hsPkgs.xhtml)
            (hsPkgs.feed)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.network)
            (hsPkgs.regex-tdfa)
            (hsPkgs.xml)
            (hsPkgs.mtl)
            (hsPkgs.monad-parallel)
            (hsPkgs.happstack-auth)
          ];
        };
      };
    };
  }