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
        name = "eventstore";
        version = "0.3.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yo.eight@gmail.com";
      author = "Yorick Laupa";
      homepage = "http://github.com/YoEight/eventstore";
      url = "";
      synopsis = "EventStore Haskell TCP Client";
      description = "EventStore Haskell TCP Client";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.network)
          (hsPkgs.protobuf)
          (hsPkgs.random)
          (hsPkgs.sodium)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.uuid)
        ];
      };
    };
  }