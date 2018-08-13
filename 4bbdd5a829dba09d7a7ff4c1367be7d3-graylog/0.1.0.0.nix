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
      specVersion = "1.10";
      identifier = {
        name = "graylog";
        version = "0.1.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "2016 Andrew Rademacher";
      maintainer = "andrewrademacher@gmail.com";
      author = "Andrew Rademacher";
      homepage = "https://github.com/AndrewRademacher/haskell-graylog";
      url = "";
      synopsis = "Support for graylog output.";
      description = "Support for sending GELF formatted messages to graylog over\nchunked UDP.";
      buildType = "Simple";
    };
    components = {
      "graylog" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-casing)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.random)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "test-state" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.graylog)
            (hsPkgs.aeson)
            (hsPkgs.aeson-casing)
            (hsPkgs.bytestring)
            (hsPkgs.file-embed)
            (hsPkgs.network)
            (hsPkgs.scientific)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }