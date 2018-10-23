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
        name = "xournal-builder";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "";
      url = "";
      synopsis = "text builder for xournal file format";
      description = "This library builds text xoj format file from xournal data structure";
      buildType = "Simple";
    };
    components = {
      "xournal-builder" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.xournal-types)
          (hsPkgs.blaze-builder)
          (hsPkgs.strict)
          (hsPkgs.double-conversion)
          (hsPkgs.bytestring)
        ];
      };
    };
  }