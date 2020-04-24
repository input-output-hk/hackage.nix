{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "wavconvert"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Tim Chevalier, 2008";
      maintainer = "chevalier@alum.wellesley.edu";
      author = "Tim Chevalier";
      homepage = "";
      url = "";
      synopsis = "Command-line tool for converting audio files and filling in ID3 tags";
      description = "This program is useful for turning a directory tree of .wav files\n(presumably created by a CD ripping program) into a tree of .ogg\nfiles with proper metadata. It is meant to be run on a directory tree\nin which the directory structure is organized according to\nthe artist and album names. It runs an .ogg encoder (which is\nassumed to be installed) and sets the metadata in the resulting\n.ogg files based on the directory organization. (See the README\nfor examples.) It would be easy to adapt the code to generate\n.mp3 files instead of .ogg, or to use a different encoder\n(currently the \"oggenc\" program is assumed.)";
      buildType = "Simple";
      };
    components = {
      exes = {
        "wavconvert" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }