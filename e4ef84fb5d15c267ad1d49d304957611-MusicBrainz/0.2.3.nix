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
      specVersion = "1.8";
      identifier = {
        name = "MusicBrainz";
        version = "0.2.3";
      };
      license = "GPL-3.0-only";
      copyright = "2012-2015 Clint Adams";
      maintainer = "clint@debian.org";
      author = "Clint Adams";
      homepage = "http://floss.scru.org/hMusicBrainz";
      url = "";
      synopsis = "interface to MusicBrainz XML2 web service";
      description = "interface to MusicBrainz XML2 web service";
      buildType = "Simple";
    };
    components = {
      "MusicBrainz" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.monad-control)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.resourcet)
          (hsPkgs.vector)
          (hsPkgs.xml-types)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.old-locale)
          (hsPkgs.xml-conduit)
          (hsPkgs.HTTP)
          (hsPkgs.aeson)
        ];
      };
    };
  }