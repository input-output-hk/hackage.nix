{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hoodle-parser";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "http://ianwookim.org/hoodle";
      url = "";
      synopsis = "Hoodle file parser";
      description = "Text parser for hoodle xml file";
      buildType = "Simple";
    };
    components = {
      "hoodle-parser" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.strict)
          (hsPkgs.hoodle-types)
          (hsPkgs.xournal-types)
          (hsPkgs.text)
          (hsPkgs.lens)
          (hsPkgs.either)
        ];
      };
    };
  }