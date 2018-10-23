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
        name = "discogs-haskell";
        version = "0.0.5.0";
      };
      license = "MIT";
      copyright = "2016 accraze";
      maintainer = "accraze@gmail.com";
      author = "accraze";
      homepage = "http://github.com/accraze/discogs-haskell";
      url = "";
      synopsis = "Client for Discogs REST API";
      description = "Contains actions to retrieve data from the Discogs database.";
      buildType = "Simple";
    };
    components = {
      "discogs-haskell" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.data-default-class)
          (hsPkgs.free)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.network)
          (hsPkgs.api-builder)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.aeson)
            (hsPkgs.api-builder)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.discogs-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }