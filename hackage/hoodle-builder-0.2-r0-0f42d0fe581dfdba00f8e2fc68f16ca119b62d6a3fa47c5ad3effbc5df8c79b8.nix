{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hoodle-builder"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "";
      url = "";
      synopsis = "text builder for hoodle file format";
      description = "This library builds text xoj format file from hoodle data structure";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hoodle-types)
          (hsPkgs.lens)
          (hsPkgs.blaze-builder)
          (hsPkgs.strict)
          (hsPkgs.bytestring)
          (hsPkgs.double-conversion)
          ];
        };
      };
    }