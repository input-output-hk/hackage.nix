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
      specVersion = "1.10";
      identifier = {
        name = "craze";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Eduardo Trujillo <ed@chromabits.com>";
      author = "";
      homepage = "https://github.com/etcinit/craze#readme";
      url = "";
      synopsis = "HTTP Racing Library";
      description = "A micro-library for racing HTTP GET requests";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.curl)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.async)
          (hsPkgs.data-default-class)
        ];
      };
      exes = {
        "craze-example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.curl)
            (hsPkgs.bytestring)
            (hsPkgs.transformers)
            (hsPkgs.craze)
            (hsPkgs.optparse-generic)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "craze-spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.curl)
            (hsPkgs.bytestring)
            (hsPkgs.transformers)
            (hsPkgs.craze)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
            (hsPkgs.http-types)
            (hsPkgs.haxy)
            (hsPkgs.HTTP)
          ];
        };
        "craze-doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.curl)
            (hsPkgs.bytestring)
            (hsPkgs.transformers)
            (hsPkgs.craze)
            (hsPkgs.doctest)
            (hsPkgs.doctest-discover)
          ];
        };
      };
    };
  }