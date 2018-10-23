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
        name = "hdbi-sqlite";
        version = "1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Aleksey Uymanov <s9gf4ult@gmail.com>";
      author = "Aleksey Uymanov";
      homepage = "https://github.com/s9gf4ult/hdbi-sqlite";
      url = "";
      synopsis = "SQlite driver for HDBI";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hdbi-sqlite" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hdbi)
          (hsPkgs.direct-sqlite)
          (hsPkgs.text)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "runtests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.direct-sqlite)
            (hsPkgs.hdbi)
            (hsPkgs.hdbi-tests)
            (hsPkgs.test-framework)
            (hsPkgs.text)
          ];
        };
      };
    };
  }