{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hoodle-types"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "";
      url = "";
      synopsis = "Data types for programs for hoodle file format";
      description = "Hoodle file format data type including generic interface";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cereal)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.strict)
          (hsPkgs.text)
          (hsPkgs.uuid)
          (hsPkgs.vector)
          ];
        };
      };
    }