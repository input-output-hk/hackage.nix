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
        name = "engine-io-yesod";
        version = "1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tim@timbaumann.info";
      author = "Tim Baumann";
      homepage = "";
      url = "";
      synopsis = "";
      description = "This package provides an @engine-io@ @ServerAPI@ that is compatible with\n<http://www.yesodweb.com/ Yesod>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.yesod-core)
          (hsPkgs.engine-io)
          (hsPkgs.http-types)
          (hsPkgs.unordered-containers)
          (hsPkgs.wai)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.websockets)
          (hsPkgs.wai-websockets)
        ];
      };
    };
  }