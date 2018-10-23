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
        name = "seqid-streams";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "luke@hoersten.org";
      author = "Luke Hoersten";
      homepage = "";
      url = "";
      synopsis = "Sequence ID IO-Streams";
      description = "Uniquely identify elements in a sequenced stream";
      buildType = "Simple";
    };
    components = {
      "seqid-streams" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.io-streams)
          (hsPkgs.seqid)
        ];
      };
    };
  }