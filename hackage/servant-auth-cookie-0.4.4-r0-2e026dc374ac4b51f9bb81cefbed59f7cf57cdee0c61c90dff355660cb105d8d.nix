{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      dev = false;
      servant9 = true;
      build-examples = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-auth-cookie";
        version = "0.4.4";
      };
      license = "BSD-3-Clause";
      copyright = "Al Zohali <zohl@fmap.me>, Mark Karpov <markkarpov@opmbx.org>";
      maintainer = "Al Zohali <zohl@fmap.me>";
      author = "Al Zohali";
      homepage = "";
      url = "";
      synopsis = "Authentication via encrypted cookies";
      description = "Authentication via encrypted client-side cookies,\ninspired by client-session library by Michael Snoyman and based on\nideas of the paper \"A Secure Cookie Protocol\" by Alex Liu et al.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.cookie)
          (hsPkgs.cryptonite)
          (hsPkgs.data-default)
          (hsPkgs.exceptions)
          (hsPkgs.http-types)
          (hsPkgs.memory)
          (hsPkgs.mtl)
          (hsPkgs.servant)
          (hsPkgs.servant-server)
          (hsPkgs.tagged)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.wai)
        ] ++ (if flags.servant9
          then [
            (hsPkgs.servant)
            (hsPkgs.http-api-data)
          ]
          else [
            (hsPkgs.servant)
            (hsPkgs.bytestring-conversion)
          ]);
      };
      exes = {
        "example" = {
          depends  = pkgs.lib.optionals (flags.build-examples) ([
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.cryptonite)
            (hsPkgs.data-default)
            (hsPkgs.exceptions)
            (hsPkgs.http-media)
            (hsPkgs.mtl)
            (hsPkgs.servant)
            (hsPkgs.servant-auth-cookie)
            (hsPkgs.servant-blaze)
            (hsPkgs.servant-server)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.warp)
          ] ++ (if flags.servant9
            then [
              (hsPkgs.servant)
              (hsPkgs.http-api-data)
            ]
            else [
              (hsPkgs.servant)
              (hsPkgs.bytestring-conversion)
            ]));
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.cryptonite)
            (hsPkgs.data-default)
            (hsPkgs.deepseq)
            (hsPkgs.hspec)
            (hsPkgs.servant-auth-cookie)
            (hsPkgs.servant-server)
            (hsPkgs.time)
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.8")) (hsPkgs.tagged);
        };
        "example-tests" = {
          depends  = pkgs.lib.optionals (flags.build-examples) (([
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.blaze-markup)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.exceptions)
            (hsPkgs.cryptonite)
            (hsPkgs.data-default)
            (hsPkgs.deepseq)
            (hsPkgs.http-media)
            (hsPkgs.http-types)
            (hsPkgs.hspec)
            (hsPkgs.hspec-wai)
            (hsPkgs.QuickCheck)
            (hsPkgs.servant-auth-cookie)
            (hsPkgs.servant-blaze)
            (hsPkgs.servant-server)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
          ] ++ (if flags.servant9
            then [
              (hsPkgs.servant)
              (hsPkgs.http-api-data)
            ]
            else [
              (hsPkgs.servant)
              (hsPkgs.bytestring-conversion)
            ])) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.8")) (hsPkgs.tagged));
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.cryptonite)
            (hsPkgs.servant-auth-cookie)
            (hsPkgs.servant-server)
          ];
        };
      };
    };
  }