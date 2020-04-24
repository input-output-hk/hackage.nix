{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { development = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "shake-bindist"; version = "1.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2020 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Rules for binary distributions";
      description = "Pack files into a binary distribution";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."shake" or ((hsPkgs.pkgs-errors).buildDepError "shake"))
          (hsPkgs."lzlib" or ((hsPkgs.pkgs-errors).buildDepError "lzlib"))
          (hsPkgs."zstd" or ((hsPkgs.pkgs-errors).buildDepError "zstd"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."archive-sig" or ((hsPkgs.pkgs-errors).buildDepError "archive-sig"))
          (hsPkgs."bz2" or ((hsPkgs.pkgs-errors).buildDepError "bz2"))
          (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
          (hsPkgs."lzma" or ((hsPkgs.pkgs-errors).buildDepError "lzma"))
          ];
        buildable = true;
        };
      };
    }