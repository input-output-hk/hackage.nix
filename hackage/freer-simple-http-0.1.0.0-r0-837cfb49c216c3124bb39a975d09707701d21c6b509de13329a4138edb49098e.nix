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
        name = "freer-simple-http";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2018 Ben Weitzman";
      maintainer = "ben@costarastrology.com";
      author = "Ben Weitzman";
      homepage = "";
      url = "";
      synopsis = "Make HTTP requests with freer-simple!";
      description = "Please see the README on GitHub at <https://gitlab.com/costar-astrology/freer-simple-contrib/tree/master/freer-simple-http>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.freer-simple)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
        ];
      };
      tests = {
        "freer-simple-http-test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.freer-simple)
            (hsPkgs.freer-simple-http)
            (hsPkgs.hspec)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
          ];
        };
      };
    };
  }