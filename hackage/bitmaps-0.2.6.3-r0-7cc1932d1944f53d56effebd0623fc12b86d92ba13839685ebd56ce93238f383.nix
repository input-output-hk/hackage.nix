{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "bitmaps"; version = "0.2.6.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010 Byron James Johnson";
      maintainer = "ByronJohnsonFP@gmail.com";
      author = "Byron James Johnson";
      homepage = "https://github.com/bairyn/bitmaps";
      url = "";
      synopsis = "Bitmap library";
      description = "Library defining several bitmap types, including ones stored as unboxed\narrays, any string type, and functions\n\nThis library also supports conversion to and from bitmaps as defined in the\n\"bitmap\" package.\n\nThis library has not yet been tested extensively.\n\nNote: This library is currently largely designed with RGB pixels with a\ncolor depth of 24 bits in mind.  Better support for other pixel and color\nformats is intended to be implemented in the future.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."monad-state" or ((hsPkgs.pkgs-errors).buildDepError "monad-state"))
          (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
          (hsPkgs."bitmap" or ((hsPkgs.pkgs-errors).buildDepError "bitmap"))
          (hsPkgs."stb-image" or ((hsPkgs.pkgs-errors).buildDepError "stb-image"))
          (hsPkgs."string-class" or ((hsPkgs.pkgs-errors).buildDepError "string-class"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }