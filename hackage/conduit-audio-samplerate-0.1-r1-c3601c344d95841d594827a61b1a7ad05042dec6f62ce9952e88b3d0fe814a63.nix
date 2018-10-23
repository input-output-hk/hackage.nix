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
        name = "conduit-audio-samplerate";
        version = "0.1";
      };
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
      "conduit-audio-samplerate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.conduit-audio)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
          (hsPkgs.vector)
        ];
        libs = [ (pkgs."samplerate") ];
      };
    };
  }