{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hs-ffmpeg"; version = "0.2.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Vasyl Pasternak";
      maintainer = "vasylpasternak@gmail.com";
      author = "Vasyl Pasternak";
      homepage = "";
      url = "";
      synopsis = "Bindings to FFMPEG library";
      description = "Bindings to FFMPEG library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          ];
        libs = [
          (pkgs."avformat" or ((hsPkgs.pkgs-errors).sysDepError "avformat"))
          (pkgs."avcodec" or ((hsPkgs.pkgs-errors).sysDepError "avcodec"))
          (pkgs."avutil" or ((hsPkgs.pkgs-errors).sysDepError "avutil"))
          (pkgs."avfilter" or ((hsPkgs.pkgs-errors).sysDepError "avfilter"))
          (pkgs."avdevice" or ((hsPkgs.pkgs-errors).sysDepError "avdevice"))
          (pkgs."swscale" or ((hsPkgs.pkgs-errors).sysDepError "swscale"))
          (pkgs."vorbisfile" or ((hsPkgs.pkgs-errors).sysDepError "vorbisfile"))
          (pkgs."vorbis" or ((hsPkgs.pkgs-errors).sysDepError "vorbis"))
          (pkgs."vorbisenc" or ((hsPkgs.pkgs-errors).sysDepError "vorbisenc"))
          (pkgs."theora" or ((hsPkgs.pkgs-errors).sysDepError "theora"))
          (pkgs."mp3lame" or ((hsPkgs.pkgs-errors).sysDepError "mp3lame"))
          (pkgs."faac" or ((hsPkgs.pkgs-errors).sysDepError "faac"))
          (pkgs."z" or ((hsPkgs.pkgs-errors).sysDepError "z"))
          (pkgs."dc1394_control" or ((hsPkgs.pkgs-errors).sysDepError "dc1394_control"))
          ];
        buildable = true;
        };
      };
    }