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
        name = "streaming-with";
        version = "0.2.1.0";
      };
      license = "MIT";
      copyright = "Ivan Lazar Miljenovic";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "with/bracket-style idioms for use with streaming";
      description = "This package provides the foundations for a continuation-based\napproach for dealing with resources in the streaming ecosystem.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.managed)
          (hsPkgs.streaming-bytestring)
          (hsPkgs.temporary)
          (hsPkgs.transformers)
        ];
      };
    };
  }