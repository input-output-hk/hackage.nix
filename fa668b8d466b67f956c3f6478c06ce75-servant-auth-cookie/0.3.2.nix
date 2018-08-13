{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      dev = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-auth-cookie";
        version = "0.3.2";
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
      "servant-auth-cookie" = {
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
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.wai)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.8")) (hsPkgs.tagged);
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.cryptonite)
            (hsPkgs.data-default)
            (hsPkgs.http-media)
            (hsPkgs.mtl)
            (hsPkgs.servant)
            (hsPkgs.servant-auth-cookie)
            (hsPkgs.servant-blaze)
            (hsPkgs.servant-server)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.warp)
          ];
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