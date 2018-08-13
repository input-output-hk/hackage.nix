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
      specVersion = "1.2";
      identifier = {
        name = "wai-extra";
        version = "0.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/wai-extra";
      url = "";
      synopsis = "Provides some basic WAI handlers and middleware.";
      description = "The goal here is to provide common features without many dependencies.";
      buildType = "Simple";
    };
    components = {
      "wai-extra" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.wai)
          (hsPkgs.split)
          (hsPkgs.web-encodings)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.clientsession)
          (hsPkgs.predicates)
          (hsPkgs.zlib)
          (hsPkgs.sendfile)
          (hsPkgs.safe)
          (hsPkgs.failure)
          (hsPkgs.network)
        ];
      };
    };
  }