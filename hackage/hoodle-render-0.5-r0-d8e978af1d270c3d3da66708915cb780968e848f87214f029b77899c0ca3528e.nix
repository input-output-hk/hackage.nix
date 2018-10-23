{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { gtk3 = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hoodle-render";
        version = "0.5";
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.cairo)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.gd)
          (hsPkgs.hashable)
          (hsPkgs.hoodle-types)
          (hsPkgs.lens)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.poppler)
          (hsPkgs.stm)
          (hsPkgs.strict)
          (hsPkgs.svgcairo)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.unordered-containers)
          (hsPkgs.uuid)
        ] ++ (if flags.gtk3
          then [ (hsPkgs.gtk3) ]
          else [ (hsPkgs.gtk) ]);
      };
    };
  }