{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "conduit-audio-sndfile"; version = "0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "miketolly@gmail.com";
      author = "Michael Tolly";
      homepage = "http://github.com/mtolly/conduit-audio";
      url = "";
      synopsis = "conduit-audio interface to the libsndfile audio file library";
      description = "A wrapper around @hsndfile@ (binding to the @libsndfile@ library)\nfor use with @conduit-audio@, to load a wide variety of audio files as streams.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."conduit-audio" or ((hsPkgs.pkgs-errors).buildDepError "conduit-audio"))
          (hsPkgs."hsndfile" or ((hsPkgs.pkgs-errors).buildDepError "hsndfile"))
          (hsPkgs."hsndfile-vector" or ((hsPkgs.pkgs-errors).buildDepError "hsndfile-vector"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }