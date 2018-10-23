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
        name = "servant-auth-client";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Julian K. Arni";
      maintainer = "jkarni@gmail.com";
      author = "Julian K. Arni";
      homepage = "http://github.com/jkarni/servant-auth-client#readme";
      url = "";
      synopsis = "";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "servant-auth-client" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.servant-client)
          (hsPkgs.servant-auth)
          (hsPkgs.servant)
        ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.servant-client)
            (hsPkgs.servant-auth)
            (hsPkgs.servant)
            (hsPkgs.doctest)
            (hsPkgs.Glob)
            (hsPkgs.yaml)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.servant-client)
            (hsPkgs.servant-auth)
            (hsPkgs.servant)
            (hsPkgs.servant-auth-client)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.servant-auth-server)
            (hsPkgs.servant-server)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.jose)
          ];
        };
      };
    };
  }