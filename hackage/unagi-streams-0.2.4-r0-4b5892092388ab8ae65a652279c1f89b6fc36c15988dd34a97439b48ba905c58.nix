{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "unagi-streams";
        version = "0.2.4";
      };
      license = "BSD-3-Clause";
      copyright = "Bitnomial, Inc. (c) 2016";
      maintainer = "luke@bitnomial.com";
      author = "Luke Hoersten";
      homepage = "https://github.com/bitnomial/unagi-streams";
      url = "";
      synopsis = "Unagi Chan IO-Streams";
      description = "Io-streams chans implemented underneath with\nunagi-chans. This library is a straight port of\nthe default io-streams chan implementation.";
      buildType = "Simple";
    };
    components = {
      "unagi-streams" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.io-streams)
          (hsPkgs.unagi-chan)
        ];
      };
    };
  }