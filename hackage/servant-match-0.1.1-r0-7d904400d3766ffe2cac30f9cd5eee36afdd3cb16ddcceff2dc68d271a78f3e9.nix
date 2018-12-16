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
        name = "servant-match";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2017 Moritz Kiefer";
      maintainer = "moritz.kiefer@purelyfunctional.org";
      author = "Moritz Kiefer";
      homepage = "https://github.com/cocreature/servant-match#readme";
      url = "";
      synopsis = "Standalone implementation of servant’s dispatching mechanism";
      description = "This package provides a standalone implementation of dispatching a\nfunction by matching it against a Servant API. A common usecase for\nthis is to convert an `URI` to an ADT that provides a more structured\nrepresentation of the URL.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-types)
          (hsPkgs.network-uri)
          (hsPkgs.servant)
          (hsPkgs.text)
          (hsPkgs.utf8-string)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.network-uri)
            (hsPkgs.servant)
            (hsPkgs.servant-match)
            (hsPkgs.text)
          ];
        };
      };
    };
  }