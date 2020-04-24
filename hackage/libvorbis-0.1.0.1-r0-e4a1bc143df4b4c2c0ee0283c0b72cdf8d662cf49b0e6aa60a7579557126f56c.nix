{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "libvorbis"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath";
      homepage = "https://github.com/the-real-blackh/libvorbis";
      url = "";
      synopsis = "Haskell binding for libvorbis, for decoding Ogg Vorbis audio files";
      description = "This package gives you a simple high-level API for decoding Ogg Vorbis\nfiles or streams, and isn't currently intended to be comprehensive.\nSee the HOgg package in case that's more what you want.\n\nTake a look at the tests/ directory for a minimalistic command-line player.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cpu" or ((hsPkgs.pkgs-errors).buildDepError "cpu"))
          ];
        buildable = true;
        };
      };
    }