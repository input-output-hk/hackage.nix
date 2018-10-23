{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "http-client";
        version = "0.5.13";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/http-client";
      url = "";
      synopsis = "An HTTP client engine";
      description = "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/http-client>.";
      buildType = "Simple";
    };
    components = {
      "http-client" = {
        depends  = ((([
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.http-types)
          (hsPkgs.blaze-builder)
          (hsPkgs.time)
          (hsPkgs.network)
          (hsPkgs.streaming-commons)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.deepseq)
          (hsPkgs.case-insensitive)
          (hsPkgs.memory)
          (hsPkgs.cookie)
          (hsPkgs.exceptions)
          (hsPkgs.array)
          (hsPkgs.random)
          (hsPkgs.filepath)
          (hsPkgs.mime-types)
          (hsPkgs.ghc-prim)
          (hsPkgs.stm)
        ] ++ (if flags.network-uri
          then [
            (hsPkgs.network)
            (hsPkgs.network-uri)
          ]
          else [
            (hsPkgs.network)
          ])) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.10") (hsPkgs.base)) ++ pkgs.lib.optionals (system.isWindows) [
          (hsPkgs.Win32)
          (hsPkgs.safe)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.http-client)
            (hsPkgs.hspec)
            (hsPkgs.monad-control)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.http-types)
            (hsPkgs.blaze-builder)
            (hsPkgs.time)
            (hsPkgs.network)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.deepseq)
            (hsPkgs.case-insensitive)
            (hsPkgs.zlib)
            (hsPkgs.async)
            (hsPkgs.streaming-commons)
          ];
        };
        "spec-nonet" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.http-client)
            (hsPkgs.hspec)
            (hsPkgs.monad-control)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.http-types)
            (hsPkgs.blaze-builder)
            (hsPkgs.time)
            (hsPkgs.network)
            (hsPkgs.network-uri)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.deepseq)
            (hsPkgs.case-insensitive)
            (hsPkgs.zlib)
            (hsPkgs.async)
            (hsPkgs.streaming-commons)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }