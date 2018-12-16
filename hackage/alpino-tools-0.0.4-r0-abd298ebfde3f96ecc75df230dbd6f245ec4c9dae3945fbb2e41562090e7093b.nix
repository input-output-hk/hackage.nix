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
      specVersion = "1.2";
      identifier = {
        name = "alpino-tools";
        version = "0.0.4";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright 2010 Daniël de Kok";
      maintainer = "Daniël de Kok <me@danieldk.eu>";
      author = "Daniël de Kok <me@danieldk.eu>";
      homepage = "http://github.com/danieldk/alpino-tools";
      url = "";
      synopsis = "Alpino data manipulation tools";
      description = "Tools for manipulating data for the Alpino parser for Dutch.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring-lexing)
          (hsPkgs.enumerator)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.random-shuffle)
        ];
      };
      exes = {
        "at_model_rescore_data" = {};
        "at_model_filter_data" = {};
        "at_model_oracle" = {};
        "at_model_random_sample" = {};
        "at_model_statistics_data" = {};
      };
    };
  }