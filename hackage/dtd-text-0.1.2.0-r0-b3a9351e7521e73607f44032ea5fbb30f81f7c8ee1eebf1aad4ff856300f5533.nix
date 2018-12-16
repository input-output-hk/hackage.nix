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
      specVersion = "1.6";
      identifier = {
        name = "dtd-text";
        version = "0.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Montez Fitzpatrick <montezf@gmail.com>";
      author = "Yitzchak Gale,\nMontez Fitzpatrick";
      homepage = "http://github.com/m15k/hs-dtd-text";
      url = "";
      synopsis = "Parse and render XML DTDs";
      description = "This library provides means to parse XML Document Type Declaration (DTD) documents.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.dtd-types)
          (hsPkgs.xml-types)
          (hsPkgs.attoparsec)
        ];
      };
    };
  }