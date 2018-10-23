{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "Finance-Quote-Yahoo";
        version = "0.7.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@fastmail.fm";
      author = "brad clawsie";
      homepage = "http://www.b7j0c.org/stuff/haskell-yquote.xhtml";
      url = "";
      synopsis = "Obtain quote data from finance.yahoo.com";
      description = "Obtain quote data from finance.yahoo.com";
      buildType = "Simple";
    };
    components = {
      "Finance-Quote-Yahoo" = {
        depends  = [
          (hsPkgs.network)
          (hsPkgs.time)
          (hsPkgs.HTTP)
        ] ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.old-locale)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }