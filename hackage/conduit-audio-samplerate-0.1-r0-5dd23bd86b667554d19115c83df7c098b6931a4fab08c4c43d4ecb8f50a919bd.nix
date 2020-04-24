{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "conduit-audio-samplerate"; version = "0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "miketolly@gmail.com";
      author = "Michael Tolly";
      homepage = "http://github.com/mtolly/conduit-audio";
      url = "";
      synopsis = "conduit-audio interface to the libsamplerate resampling library";
      description = "A binding to the @libsamplerate@ library for use with @conduit-audio@,\nto resample audio streams.\n\nRequires the @libsamplerate@ library.\nOn Ubuntu, @apt-get install libsamplerate0-dev@;\non Mac with Homebrew, @brew install libsamplerate@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."conduit-audio" or ((hsPkgs.pkgs-errors).buildDepError "conduit-audio"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        libs = [
          (pkgs."samplerate" or ((hsPkgs.pkgs-errors).sysDepError "samplerate"))
          ];
        buildable = true;
        };
      };
    }