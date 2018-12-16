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
        name = "servant-swagger";
        version = "1.1.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2016, Servant contributors";
      maintainer = "nickolay.kudasov@gmail.com";
      author = "David Johnson, Nickolay Kudasov";
      homepage = "https://github.com/haskell-servant/servant-swagger";
      url = "";
      synopsis = "Generate Swagger specification for your servant API.";
      description = "Please see README.md";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-media)
          (hsPkgs.insert-ordered-containers)
          (hsPkgs.lens)
          (hsPkgs.servant)
          (hsPkgs.swagger2)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.hspec)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.servant)
            (hsPkgs.QuickCheck)
            (hsPkgs.filepath)
          ];
        };
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.aeson-qq)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.lens)
            (hsPkgs.servant)
            (hsPkgs.servant-swagger)
            (hsPkgs.swagger2)
            (hsPkgs.text)
            (hsPkgs.time)
          ];
        };
      };
    };
  }