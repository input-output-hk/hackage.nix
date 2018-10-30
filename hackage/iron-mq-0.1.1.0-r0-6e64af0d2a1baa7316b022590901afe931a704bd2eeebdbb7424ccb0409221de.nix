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
        name = "iron-mq";
        version = "0.1.1.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "arnoblalam@gmail.com";
      author = "Arnob Alam";
      homepage = "https://github.com/arnoblalam/iron_mq_haskell";
      url = "";
      synopsis = "Iron.IO message queueing client library";
      description = "A client library for communication with Iron.IO's message queueing service";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wreq)
          (hsPkgs.lens)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.http-client)
        ];
      };
    };
  }