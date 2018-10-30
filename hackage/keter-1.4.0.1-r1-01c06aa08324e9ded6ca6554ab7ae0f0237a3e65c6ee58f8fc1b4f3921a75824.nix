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
      specVersion = "1.8";
      identifier = {
        name = "keter";
        version = "1.4.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Web application deployment manager, focusing on Haskell web frameworks";
      description = "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/keter>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
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
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
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
          (hsPkgs.system-filepath)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim);
      };
      exes = {
        "keter" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.keter)
            (hsPkgs.data-default)
            (hsPkgs.filepath)
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
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }