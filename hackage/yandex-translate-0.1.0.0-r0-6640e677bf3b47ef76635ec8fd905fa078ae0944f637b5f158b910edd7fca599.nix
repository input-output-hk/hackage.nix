{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      integration-tests = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "yandex-translate";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "slava@bacher09.org";
      author = "Slava Bacherikov";
      homepage = "";
      url = "";
      synopsis = "Bindings to Yandex translate API";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.exceptions)
          (hsPkgs.data-default-class)
          (hsPkgs.unordered-containers)
          (hsPkgs.transformers)
          (hsPkgs.wreq)
        ];
      };
      tests = {
        "yandex-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.lens)
            (hsPkgs.hspec-core)
            (hsPkgs.hspec)
            (hsPkgs.data-default-class)
            (hsPkgs.transformers)
            (hsPkgs.yandex-translate)
          ];
        };
      };
    };
  }