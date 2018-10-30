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
      specVersion = "1.8";
      identifier = {
        name = "xournal-parser";
        version = "0.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "http://ianwookim.org/hxournal";
      url = "";
      synopsis = "Xournal file parser";
      description = "Text parser for xournal xml file";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-iteratee)
          (hsPkgs.iteratee)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.xml-enumerator)
          (hsPkgs.enumerator)
          (hsPkgs.strict)
          (hsPkgs.iteratee-compress)
          (hsPkgs.xournal-types)
          (hsPkgs.xml-types)
          (hsPkgs.text)
          (hsPkgs.fclabels)
          (hsPkgs.zlib-enum)
        ];
      };
    };
  }