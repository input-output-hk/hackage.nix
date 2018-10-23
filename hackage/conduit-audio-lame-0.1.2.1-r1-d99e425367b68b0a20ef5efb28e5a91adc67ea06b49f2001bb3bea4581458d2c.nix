{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "conduit-audio-lame";
        version = "0.1.2.1";
      };
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
      "conduit-audio-lame" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-audio)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
          (hsPkgs.vector)
        ];
        libs = [ (pkgs."mp3lame") ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
    };
  }