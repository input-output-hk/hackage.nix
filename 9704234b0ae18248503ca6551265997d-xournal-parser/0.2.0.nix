{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "xournal-parser";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "";
      url = "";
      synopsis = "Xournal file parser";
      description = "Define Xournal type and parser for xournal xml file";
      buildType = "Simple";
    };
    components = {
      "xournal-parser" = {
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
        ];
      };
    };
  }