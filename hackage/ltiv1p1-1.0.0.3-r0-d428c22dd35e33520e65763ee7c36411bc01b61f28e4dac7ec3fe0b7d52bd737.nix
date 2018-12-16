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
      specVersion = "1.12";
      identifier = {
        name = "ltiv1p1";
        version = "1.0.0.3";
      };
      license = "MIT";
      copyright = "(c) Artem Chirkin";
      maintainer = "Artem Chirkin <chirkin@arch.ethz.ch>";
      author = "Artem Chirkin";
      homepage = "https://github.com/achirkin/qua-kit";
      url = "";
      synopsis = "Partial implementation of a service provider for LTI 1.1.";
      description = "Service provider implementation for IMS Global Learning Tools Interoperability™ 1.1.\nMean to be used for LTI components at edX.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.xml-hamlet)
          (hsPkgs.xml-conduit)
          (hsPkgs.text)
          (hsPkgs.authenticate-oauth)
          (hsPkgs.containers)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.transformers)
          (hsPkgs.blaze-builder)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.time)
          (hsPkgs.random)
          (hsPkgs.data-default)
          (hsPkgs.yesod-core)
        ];
      };
    };
  }