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
        name = "irt";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2014-2017 Elliot Robinson";
      maintainer = "elliot.robinson@argiopetech.com";
      author = "Elliot Robinson";
      homepage = "https://github.com/argiopetech/irt";
      url = "";
      synopsis = "Item Response Theory functions for use in computerized adaptive testing";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ad)
          (hsPkgs.data-default-class)
          (hsPkgs.statistics)
        ];
      };
    };
  }