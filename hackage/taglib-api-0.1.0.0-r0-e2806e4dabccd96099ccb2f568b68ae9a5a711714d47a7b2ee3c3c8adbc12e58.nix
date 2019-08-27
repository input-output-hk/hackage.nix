let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { usepkgconfig = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "taglib-api"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2013 Kyle Carter";
      maintainer = "kylcarte@gmail.com";
      author = "Kyle Carter";
      homepage = "";
      url = "";
      synopsis = "A convenient layer over TagLib's C bindings";
      description = "An FFI layer to TagLib's C bindings for reading\nand writing metadata for audio files.  Currently\nsupports ID3v1 and ID3v2 for MP3 files, Ogg Vorbis\ncomments and ID3 tags and Vorbis comments in FLAC,\nMPC, Speex, WavPack TrueAudio, WAV, AIFF, MP4 and\nASF files.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        libs = (pkgs.lib).optional (!flags.usepkgconfig) (pkgs."tag_c" or (sysDepError "tag_c"));
        pkgconfig = (pkgs.lib).optional (flags.usepkgconfig) (pkgconfPkgs."taglib_c" or (pkgConfDepError "taglib_c"));
        };
      };
    }