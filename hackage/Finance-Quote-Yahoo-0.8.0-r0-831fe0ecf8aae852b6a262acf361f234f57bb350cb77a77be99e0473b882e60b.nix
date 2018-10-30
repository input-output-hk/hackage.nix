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
      specVersion = "1.6";
      identifier = {
        name = "Finance-Quote-Yahoo";
        version = "0.8.0";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-conduit)
          (hsPkgs.network)
          (hsPkgs.time)
          (hsPkgs.old-locale)
        ];
      };
    };
  }