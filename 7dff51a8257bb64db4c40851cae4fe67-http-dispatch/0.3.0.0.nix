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
        name = "http-dispatch";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Owain Lewis";
      maintainer = "owain@owainlewis.com";
      author = "Owain Lewis";
      homepage = "http://github.com/owainlewis/http-dispatch#readme";
      url = "";
      synopsis = "High level HTTP client for Haskell";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "http-dispatch" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.case-insensitive)
        ];
      };
      tests = {
        "http-dispatch-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.http-dispatch)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }