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
        name = "ratel";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "https://github.com/tfausak/ratel#readme";
      url = "";
      synopsis = "Notify Honeybadger about exceptions.";
      description = "Ratel notifies Honeybadger about exceptions.";
      buildType = "Simple";
    };
    components = {
      "ratel" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.uuid)
        ];
      };
      tests = {
        "ratel-test-suite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ratel)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
          ];
        };
      };
    };
  }