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
        name = "definitive-parser";
        version = "1.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "marc.coiffier@gmail.com";
      author = "Marc Coiffier";
      homepage = "";
      url = "";
      synopsis = "A parser combinator library for the Definitive framework";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.definitive-base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          (hsPkgs.primitive)
          (hsPkgs.cpu)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }