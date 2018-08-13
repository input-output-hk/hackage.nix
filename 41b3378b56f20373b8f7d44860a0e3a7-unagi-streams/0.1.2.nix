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
        name = "unagi-streams";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "luke@hoersten.org";
      author = "Luke Hoersten";
      homepage = "";
      url = "";
      synopsis = "Unagi Chan IO-Streams";
      description = "Io-streams chans implemented underneath with\nunagi-chans. This library is a straight port of\nthe default io-streams chan implementation.";
      buildType = "Simple";
    };
    components = {
      "unagi-streams" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unagi-chan)
          (hsPkgs.io-streams)
        ];
      };
    };
  }