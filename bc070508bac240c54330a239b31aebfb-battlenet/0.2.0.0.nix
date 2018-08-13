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
        name = "battlenet";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "teo@nullable.se";
      author = "Teo Klestrup Röijezon";
      homepage = "https://github.com/teozkr/hs-battlenet/";
      url = "";
      synopsis = "API client for Battle.Net";
      description = "API client for Battle.Net, implemented using http-conduit. See the repository or Haddock for usage.";
      buildType = "Simple";
    };
    components = {
      "battlenet" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-conduit)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.containers)
        ];
      };
    };
  }