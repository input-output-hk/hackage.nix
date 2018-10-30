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
      specVersion = "1.10";
      identifier = {
        name = "unagi-streams";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "luke@hoersten.org";
      author = "Luke Hoersten";
      homepage = "";
      url = "";
      synopsis = "Unagi Chan IO-Streams";
      description = "IO-Streams implemented underneath with Unagi\nchannels. This library is a straight port of Greg Collins' IO-Streams\nChan implementation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unagi-chan)
          (hsPkgs.io-streams)
        ];
      };
    };
  }