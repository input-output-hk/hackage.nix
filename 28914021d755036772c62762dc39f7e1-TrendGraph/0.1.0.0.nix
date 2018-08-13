{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "TrendGraph";
        version = "0.1.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "aydin.alperen.bugra@gmail.com";
      author = "Alperen AYDIN";
      homepage = "";
      url = "";
      synopsis = "A simple trend Graph script";
      description = "Mainly a function that takes in list of UTCTime and a double";
      buildType = "Simple";
    };
    components = {
      "TrendGraph" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.diagrams-lib)
          (hsPkgs.diagrams-cairo)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
        ];
      };
    };
  }