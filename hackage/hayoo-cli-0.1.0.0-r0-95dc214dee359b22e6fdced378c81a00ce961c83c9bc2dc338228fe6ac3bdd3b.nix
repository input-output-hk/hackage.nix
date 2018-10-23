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
        name = "hayoo-cli";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "gonzih@gmail.com";
      author = "Max Gonzih";
      homepage = "";
      url = "";
      synopsis = "Hayoo CLI";
      description = "Simple console client for hayoo.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hayoo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pandoc)
            (hsPkgs.aeson)
            (hsPkgs.http-conduit)
            (hsPkgs.bytestring)
            (hsPkgs.optparse-applicative)
            (hsPkgs.url)
            (hsPkgs.http-types)
          ];
        };
      };
    };
  }