{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { poppler = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hoodle-render";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "";
      url = "";
      synopsis = "Hoodle file renderer";
      description = "Rendering library using cairo for hoodle file format";
      buildType = "Simple";
    };
    components = {
      "hoodle-render" = {
        depends  = if flags.poppler
          then [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.cairo)
            (hsPkgs.strict)
            (hsPkgs.bytestring)
            (hsPkgs.poppler)
            (hsPkgs.lens)
            (hsPkgs.hoodle-types)
            (hsPkgs.TypeCompose)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.cairo)
            (hsPkgs.strict)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
            (hsPkgs.hoodle-types)
            (hsPkgs.TypeCompose)
          ];
      };
    };
  }