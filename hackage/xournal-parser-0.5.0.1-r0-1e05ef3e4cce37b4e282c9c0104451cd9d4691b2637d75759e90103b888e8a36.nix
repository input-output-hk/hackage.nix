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
        name = "xournal-parser";
        version = "0.5.0.1";
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
      "xournal-parser" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.xml-conduit)
          (hsPkgs.conduit)
          (hsPkgs.strict)
          (hsPkgs.attoparsec-conduit)
          (hsPkgs.xournal-types)
          (hsPkgs.xml-types)
          (hsPkgs.text)
          (hsPkgs.lens)
          (hsPkgs.zlib-conduit)
        ];
      };
    };
  }