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
        name = "campfire";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Xavier <michael@michaelxavier.net>";
      author = "Michael Xavier <michael@michaelxavier.net>";
      homepage = "http://github.com/michaelxavier/Campfire";
      url = "";
      synopsis = "Haskell implementation of the Campfire API";
      description = "Implements the Campfire REST API. Campfire is a business group chat system\ntailored specifically for work groups. Find out more at\n<http://www.campfirenow.com>.\nCurrently supports the entire API except for streaming and file uploads.\nStability is listed as provisional because there are currently no formal\ntests in place.";
      buildType = "Simple";
    };
    components = {
      "campfire" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.filepath)
          (hsPkgs.attoparsec)
          (hsPkgs.http-enumerator)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.http-types)
          (hsPkgs.url)
          (hsPkgs.old-locale)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }