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
        name = "socketed";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "sen.cenan@gmail.com";
      author = "sen.cenan@gmail.com";
      homepage = "";
      url = "";
      synopsis = "simpe tool to serve piped data over http and websocket";
      description = "simpe tool to serve piped data over http and websocket";
      buildType = "Simple";
    };
    components = {
      "socketed" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.websockets)
          (hsPkgs.conduit-combinators)
          (hsPkgs.conduit-extra)
          (hsPkgs.http-types)
          (hsPkgs.warp)
          (hsPkgs.text)
          (hsPkgs.async)
          (hsPkgs.wai)
          (hsPkgs.wai-websockets)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.stm-conduit)
          (hsPkgs.template-haskell)
          (hsPkgs.optparse-applicative)
          (hsPkgs.MissingH)
        ];
      };
      exes = {
        "socketed" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.websockets)
            (hsPkgs.conduit-combinators)
            (hsPkgs.conduit-extra)
            (hsPkgs.http-types)
            (hsPkgs.warp)
            (hsPkgs.text)
            (hsPkgs.async)
            (hsPkgs.wai)
            (hsPkgs.wai-websockets)
            (hsPkgs.stm)
            (hsPkgs.stm-chans)
            (hsPkgs.stm-conduit)
            (hsPkgs.template-haskell)
            (hsPkgs.optparse-applicative)
            (hsPkgs.MissingH)
          ];
        };
      };
    };
  }