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
        name = "http-test";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tomn@openbrain.org";
      author = "OpenBrain Ltd";
      homepage = "https://github.com/openbrainsrc/http-test";
      url = "";
      synopsis = "Test framework for HTTP APIs";
      description = "A simple framework for making assertions about the\nresponses of HTTP servers. See test.hs for an example";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.curl)
          (hsPkgs.aeson)
          (hsPkgs.safe)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.bytestring)
        ];
      };
      exes = {
        "test-http-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.curl)
            (hsPkgs.aeson)
            (hsPkgs.safe)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.http-test)
          ];
        };
      };
    };
  }