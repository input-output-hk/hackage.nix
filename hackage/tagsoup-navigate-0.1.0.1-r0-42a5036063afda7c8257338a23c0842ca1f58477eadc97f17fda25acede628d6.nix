{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tagsoup-navigate"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2019 Tony Morris";
      maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://gitlab.com/tonymorris/tagsoup-navigate";
      url = "";
      synopsis = "Tagsoup Navigate";
      description = "Lenses and data types for navigating tagsoup";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.mmorph)
          (hsPkgs.mtl)
          (hsPkgs.tagsoup)
          (hsPkgs.tagsoup-selection)
          (hsPkgs.transformers)
          (hsPkgs.deriving-compat)
          ];
        };
      };
    }