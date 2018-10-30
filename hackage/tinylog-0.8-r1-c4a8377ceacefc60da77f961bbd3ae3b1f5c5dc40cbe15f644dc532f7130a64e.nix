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
        name = "tinylog";
        version = "0.8";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2014 Toralf Wittner";
      maintainer = "Toralf Wittner <tw@dtex.org>";
      author = "Toralf Wittner";
      homepage = "";
      url = "";
      synopsis = "Simplistic logging using fast-logger.";
      description = "Trivial logger on top of fast-logger.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.date-cache)
          (hsPkgs.fast-logger)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unix-time)
        ];
      };
    };
  }