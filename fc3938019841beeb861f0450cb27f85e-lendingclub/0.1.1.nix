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
        name = "lendingclub";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Matthew Wraith";
      maintainer = "wraithm@gmail.com";
      author = "Matthew Wraith";
      homepage = "https://www.lendingclub.com/developers/lc-api.action";
      url = "";
      synopsis = "Bindings for the LendingClub marketplace API";
      description = "Bindings for the LendingClub marketplace API";
      buildType = "Simple";
    };
    components = {
      "lendingclub" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.aeson)
          (hsPkgs.scientific)
          (hsPkgs.vector)
          (hsPkgs.io-streams)
          (hsPkgs.HsOpenSSL)
          (hsPkgs.http-streams)
          (hsPkgs.blaze-builder)
        ];
      };
    };
  }