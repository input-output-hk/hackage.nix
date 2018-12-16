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
        name = "datadog";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "https://github.com/iand675/datadog";
      url = "";
      synopsis = "Datadog client for Haskell. Currently only StatsD supported, other support forthcoming.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.lens)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.old-locale)
          (hsPkgs.buffer-builder)
          (hsPkgs.auto-update)
          (hsPkgs.network)
          (hsPkgs.monad-control)
          (hsPkgs.lifted-base)
          (hsPkgs.transformers-base)
        ];
      };
    };
  }