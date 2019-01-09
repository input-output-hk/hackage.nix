{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bitmaps"; version = "0.2.5.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010 Byron James Johnson";
      maintainer = "KrabbyKrap@gmail.com";
      author = "Byron James Johnson";
      homepage = "";
      url = "";
      synopsis = "Bitmap library";
      description = "Library defining several bitmap types, including ones stored as unboxed arrays, any string type, and functions\n\nThis library also supports conversion to and from bitmaps as defined in the \"bitmap\" package.\n\nThis library has not yet been tested extensively.\n\nNote: This library is currently largely designed with RGB pixels with a color depth of 24 bits in mind.  Better support for other pixel and color formats is intended to be implemented in the future.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.binary)
          (hsPkgs.cereal)
          (hsPkgs.monad-state)
          (hsPkgs.zlib)
          (hsPkgs.bitmap)
          (hsPkgs.stb-image)
          (hsPkgs.string-class)
          (hsPkgs.tagged)
          (hsPkgs.bytestring)
          ];
        };
      };
    }