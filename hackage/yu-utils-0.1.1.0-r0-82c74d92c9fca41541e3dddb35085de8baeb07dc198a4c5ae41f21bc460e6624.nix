{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { client = false; };
    package = {
      specVersion = "1.22";
      identifier = {
        name = "yu-utils";
        version = "0.1.1.0";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2017-2018 Johann Lee <me@qinka.pro>";
      maintainer = "qinka@live.com";
      author = "Johann Lee";
      homepage = "";
      url = "";
      synopsis = "Utils for Yu";
      description = "Utils for Yu";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.template-haskell)
          (hsPkgs.gitrev)
          (hsPkgs.cmdargs)
          (hsPkgs.signal)
          (hsPkgs.exceptions)
        ] ++ pkgs.lib.optionals (!flags.client) [
          (hsPkgs.yesod-core)
          (hsPkgs.blaze-markup)
          (hsPkgs.blaze-html)
          (hsPkgs.conduit)
          (hsPkgs.shakespeare)
          (hsPkgs.fast-logger)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.mongoDB)
          (hsPkgs.network)
          (hsPkgs.parsec)
          (hsPkgs.resource-pool)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.wai-logger)
          (hsPkgs.wai-extra)
          (hsPkgs.warp)
          (hsPkgs.xml-hamlet)
          (hsPkgs.mtl)
          (hsPkgs.http-types)
        ];
      };
    };
  }