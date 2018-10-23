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
        name = "googleplus";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Xavier <michael@michaelxavier.net>";
      author = "Michael Xavier <michael@michaelxavier.net>";
      homepage = "http://github.com/michaelxavier/GooglePlus";
      url = "";
      synopsis = "Haskell implementation of the Google+ API";
      description = "Will implement the Google+ REST API. Google+ is a social network made by\nGoogle. Found out more at <http://plus.google.com>.\nCurrently supports the API-key authentication only. OAuth should be coming\nalong at some point. Only features read-only API access beacuse that is all\nthat Google has published thus far.";
      buildType = "Simple";
    };
    components = {
      "googleplus" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.attoparsec)
          (hsPkgs.http-enumerator)
          (hsPkgs.mtl)
          (hsPkgs.rfc3339)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.http-types)
          (hsPkgs.url)
          (hsPkgs.haskell98)
          (hsPkgs.containers)
        ];
      };
    };
  }