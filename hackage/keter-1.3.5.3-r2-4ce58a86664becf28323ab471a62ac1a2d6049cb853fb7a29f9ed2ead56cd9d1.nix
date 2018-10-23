{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "keter";
        version = "1.3.5.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Web application deployment manager, focusing on Haskell web frameworks";
      description = "Handles deployment of web apps, providing a reverse proxy to achieve zero downtime deployments. For more information, please see the README on Github: <https://github.com/snoyberg/keter#readme>";
      buildType = "Simple";
    };
    components = {
      "keter" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.data-default)
          (hsPkgs.filepath)
          (hsPkgs.zlib)
          (hsPkgs.network)
          (hsPkgs.time)
          (hsPkgs.tar)
          (hsPkgs.template-haskell)
          (hsPkgs.blaze-builder)
          (hsPkgs.yaml)
          (hsPkgs.unix-compat)
          (hsPkgs.fsnotify)
          (hsPkgs.system-filepath)
          (hsPkgs.system-fileio)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.network-conduit-tls)
          (hsPkgs.http-reverse-proxy)
          (hsPkgs.unix)
          (hsPkgs.wai-app-static)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.http-types)
          (hsPkgs.regex-tdfa)
          (hsPkgs.attoparsec)
          (hsPkgs.http-client)
          (hsPkgs.http-conduit)
          (hsPkgs.case-insensitive)
          (hsPkgs.array)
          (hsPkgs.mtl)
          (hsPkgs.warp)
          (hsPkgs.warp-tls)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.stm)
          (hsPkgs.async)
          (hsPkgs.lifted-base)
        ];
      };
      exes = {
        "keter" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.keter)
            (hsPkgs.system-filepath)
            (hsPkgs.data-default)
          ];
        };
        "hello" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.keter)
            (hsPkgs.warp)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.http-types)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.data-default)
            (hsPkgs.transformers)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.conduit)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.unix)
            (hsPkgs.keter)
          ];
        };
      };
    };
  }