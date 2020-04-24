{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.1";
      identifier = { name = "pngload"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Marko Lauronen";
      maintainer = "Marko Lauronen <marko.lauronen@pp1.inet.fi>";
      author = "Marko Lauronen <marko.lauronen@pp1.inet.fi>";
      homepage = "";
      url = "";
      synopsis = "Pure Haskell loader for PNG images";
      description = "This package provides a simple PNG loader for PNG images. It currently supports\n24bit RGB(A) images with no interlacing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          ];
        buildable = true;
        };
      };
    }