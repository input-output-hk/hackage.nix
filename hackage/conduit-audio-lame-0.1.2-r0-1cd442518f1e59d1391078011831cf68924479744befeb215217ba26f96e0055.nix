{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "conduit-audio-lame"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "miketolly@gmail.com";
      author = "Michael Tolly";
      homepage = "http://github.com/mtolly/conduit-audio";
      url = "";
      synopsis = "conduit-audio interface to the LAME MP3 library";
      description = "A simple binding to the LAME MP3 library for use with @conduit-audio@,\nto save audio streams as MP3 files.\n\nRequires the LAME library.\nOn Ubuntu, @apt-get install libmp3lame-dev@;\non Mac with Homebrew, @brew install lame@.\n\nLAME is LGPL licensed, so you may dynamically link to it from a closed-source program.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."conduit-audio" or ((hsPkgs.pkgs-errors).buildDepError "conduit-audio"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        libs = [
          (pkgs."mp3lame" or ((hsPkgs.pkgs-errors).sysDepError "mp3lame"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }