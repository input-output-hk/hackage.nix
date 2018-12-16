{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { poppler = true; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "xournal-render";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "";
      url = "";
      synopsis = "Xournal file renderer";
      description = "Rendering library using cairo for xournal file format";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = if flags.poppler
          then [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.cairo)
            (hsPkgs.strict)
            (hsPkgs.bytestring)
            (hsPkgs.poppler)
            (hsPkgs.fclabels)
            (hsPkgs.xournal-types)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.cairo)
            (hsPkgs.strict)
            (hsPkgs.bytestring)
            (hsPkgs.fclabels)
            (hsPkgs.xournal-types)
          ];
      };
    };
  }