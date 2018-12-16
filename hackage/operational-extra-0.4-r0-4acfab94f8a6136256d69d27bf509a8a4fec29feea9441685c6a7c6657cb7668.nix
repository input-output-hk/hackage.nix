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
        name = "operational-extra";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "http://github.com/andrewthad/vinyl-ecosystem";
      url = "";
      synopsis = "Interpretation functions and simple instruction sets for operational";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.operational)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
        ];
      };
    };
  }