{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "ffmpeg-tutorials"; version = "0.3.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Vasyl Pasternak";
      maintainer = "vasylpasternak@gmail.com";
      author = "Vasyl Pasternak";
      homepage = "http://patch-tag.com/r/VasylPasternak/ffmpeg-tutorials";
      url = "";
      synopsis = "Tutorials on ffmpeg usage to play video/audio";
      description = "A set of tutorials with raising complexity";
      buildType = "Simple";
      };
    components = {
      exes = {
        "tutorial01" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."hs-ffmpeg" or ((hsPkgs.pkgs-errors).buildDepError "hs-ffmpeg"))
            ];
          buildable = true;
          };
        "tutorial02" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
            (hsPkgs."hs-ffmpeg" or ((hsPkgs.pkgs-errors).buildDepError "hs-ffmpeg"))
            ];
          buildable = true;
          };
        "tutorial03" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
            (hsPkgs."hs-ffmpeg" or ((hsPkgs.pkgs-errors).buildDepError "hs-ffmpeg"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }