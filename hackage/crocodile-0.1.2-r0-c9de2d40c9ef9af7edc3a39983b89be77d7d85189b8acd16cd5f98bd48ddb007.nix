{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "crocodile"; version = "0.1.2"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "tomhammersley@gmail.com";
      author = "Tom Hammersley";
      homepage = "https://github.com/TomHammersley/HaskellRenderer/";
      url = "";
      synopsis = "An offline renderer supporting ray tracing and photon mapping";
      description = "This is an offline renderer written purely in Haskell, supporting ray tracing and photon mapping with an irradiance cache";
      buildType = "Simple";
      };
    components = {
      exes = {
        "crocodile" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."heap" or ((hsPkgs.pkgs-errors).buildDepError "heap"))
            (hsPkgs."bmp" or ((hsPkgs.pkgs-errors).buildDepError "bmp"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."mersenne-random-pure64" or ((hsPkgs.pkgs-errors).buildDepError "mersenne-random-pure64"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            ];
          buildable = true;
          };
        };
      };
    }