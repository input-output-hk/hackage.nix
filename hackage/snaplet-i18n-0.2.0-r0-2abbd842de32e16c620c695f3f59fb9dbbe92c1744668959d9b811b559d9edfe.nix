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
        name = "snaplet-i18n";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Haisheng Wu";
      maintainer = "freizl@gmail.com";
      author = "Haisheng,Wu";
      homepage = "https://github.com/HaskellCNOrg/snaplet-i18n";
      url = "";
      synopsis = "snaplet-i18n";
      description = "A light weight i18n snaplet.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.configurator)
          (hsPkgs.filepath)
          (hsPkgs.heist)
          (hsPkgs.lens)
          (hsPkgs.snap)
          (hsPkgs.snap-loader-static)
          (hsPkgs.text)
          (hsPkgs.xmlhtml)
          (hsPkgs.map-syntax)
        ];
      };
      exes = {
        "demo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.configurator)
            (hsPkgs.transformers)
            (hsPkgs.filepath)
            (hsPkgs.heist)
            (hsPkgs.lens)
            (hsPkgs.snap)
            (hsPkgs.snap-loader-static)
            (hsPkgs.text)
            (hsPkgs.xmlhtml)
            (hsPkgs.bytestring)
            (hsPkgs.snaplet-i18n)
            (hsPkgs.map-syntax)
          ];
        };
      };
    };
  }