{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { mmap = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "JuicyPixels"; version = "3.1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "vincent.berthoux@gmail.com";
      author = "Vincent Berthoux";
      homepage = "https://github.com/Twinside/Juicy.Pixels";
      url = "";
      synopsis = "Picture loading/serialization (in png, jpeg, bitmap, gif, tiff and radiance)";
      description = "<<docimages/juicy.png>>\n\nThis library can load and store images in PNG,Bitmap, Jpeg, Radiance, Tiff and Gif images.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ] ++ (pkgs.lib).optional (flags.mmap) (hsPkgs."mmap" or ((hsPkgs.pkgs-errors).buildDepError "mmap"));
        buildable = true;
        };
      };
    }