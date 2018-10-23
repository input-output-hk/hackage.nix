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
        name = "prosper";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Matthew Wraith";
      maintainer = "wraithm@gmail.com";
      author = "Matthew Wraith";
      homepage = "https://api.prosper.com";
      url = "";
      synopsis = "Bindings to the Prosper marketplace API";
      description = "Bindings to the Prosper marketplace API";
      buildType = "Simple";
    };
    components = {
      "prosper" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.aeson)
          (hsPkgs.cereal)
          (hsPkgs.io-streams)
          (hsPkgs.HsOpenSSL)
          (hsPkgs.http-streams)
        ];
      };
    };
  }