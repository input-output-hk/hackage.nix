{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "snaplet-i18n";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Haisheng Wu";
      maintainer = "freizl@gmail.com";
      author = "Haisheng,Wu";
      homepage = "freizl.github.com";
      url = "";
      synopsis = "snaplet-i18n";
      description = "A light weight i18n snaplet.";
      buildType = "Simple";
    };
    components = {
      "snaplet-i18n" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.snap)
          (hsPkgs.snap-core)
          (hsPkgs.bytestring)
          (hsPkgs.data-lens-template)
          (hsPkgs.data-lens)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.configurator)
          (hsPkgs.text)
          (hsPkgs.xmlhtml)
          (hsPkgs.heist)
        ];
      };
    };
  }