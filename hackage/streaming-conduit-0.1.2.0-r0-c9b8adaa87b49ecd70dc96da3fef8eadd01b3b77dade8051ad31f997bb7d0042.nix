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
        name = "streaming-conduit";
        version = "0.1.2.0";
      };
      license = "MIT";
      copyright = "Ivan Lazar Miljenovic";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Bidirectional support between the streaming and conduit libraries";
      description = "Allow interoperability between the streaming and conduit data streaming ecosystems.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.streaming)
          (hsPkgs.streaming-bytestring)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "conversions" = {
          depends  = [
            (hsPkgs.streaming-conduit)
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.hspec)
            (hsPkgs.streaming)
          ];
        };
      };
    };
  }