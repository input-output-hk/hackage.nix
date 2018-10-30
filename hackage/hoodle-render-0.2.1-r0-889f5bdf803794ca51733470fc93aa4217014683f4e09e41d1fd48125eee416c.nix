{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { poppler = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hoodle-render";
        version = "0.2.1";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.containers)
          (hsPkgs.cairo)
          (hsPkgs.svgcairo)
          (hsPkgs.strict)
          (hsPkgs.bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.lens)
          (hsPkgs.hoodle-types)
          (hsPkgs.TypeCompose)
          (hsPkgs.gd)
        ] ++ pkgs.lib.optional (flags.poppler) (hsPkgs.poppler);
      };
    };
  }