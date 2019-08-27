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
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "libtagc"; version = "0.11.0"; };
      license = "LGPL-2.1-only";
      copyright = "(c) 2010 Andy Stewart";
      maintainer = "gtk2hs-users@sourceforge.net";
      author = "Andy Stewart";
      homepage = "https://patch-tag.com/r/AndyStewart/libtagc/home";
      url = "";
      synopsis = "Binding to TagLib C library.";
      description = "TagLib is a library for reading and editing the meta-data of several popular audio formats.\nCurrently it supports both ID3v1 and ID3v2 for MP3 files, Ogg Vorbis comments and ID3 tags\nand Vorbis comments in FLAC, MPC, Speex, WavPack and TrueAudio files.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."glib" or (buildDepError "glib"))
          ];
        libs = [ (pkgs."tag_c" or (sysDepError "tag_c")) ];
        pkgconfig = [
          (pkgconfPkgs."taglib_c" or (pkgConfDepError "taglib_c"))
          ];
        };
      };
    }