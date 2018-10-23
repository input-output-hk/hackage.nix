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
        name = "ballast";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Chris Allen";
      maintainer = "zabelin.alex@gmail.com";
      author = "Alexey Zabelin, Chris Allen";
      homepage = "https://github.com/alexeyzab/ballast#readme";
      url = "";
      synopsis = "Shipwire API client";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "ballast" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.utf8-string)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.hspec)
          (hsPkgs.hspec-expectations)
          (hsPkgs.vector)
          (hsPkgs.unordered-containers)
          (hsPkgs.either-unwrap)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ballast)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.either-unwrap)
          ];
        };
      };
    };
  }