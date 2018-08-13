{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      splitbase = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "Finance-Quote-Yahoo";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@fastmail.fm";
      author = "brad clawsie";
      homepage = "http://www.b7j0c.org/content/haskell-yquote.html";
      url = "";
      synopsis = "Obtain quote data from finance.yahoo.com";
      description = "Obtain quote data from finance.yahoo.com";
      buildType = "Custom";
    };
    components = {
      "Finance-Quote-Yahoo" = {
        depends  = if _flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.network)
            (hsPkgs.HTTP)
            (hsPkgs.HTTP-Simple)
            (hsPkgs.MissingH)
            (hsPkgs.time)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.HTTP)
            (hsPkgs.HTTP-Simple)
            (hsPkgs.MissingH)
            (hsPkgs.time)
          ];
      };
    };
  }