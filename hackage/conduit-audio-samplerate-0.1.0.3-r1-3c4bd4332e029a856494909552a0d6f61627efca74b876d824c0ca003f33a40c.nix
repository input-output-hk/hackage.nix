{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "conduit-audio-samplerate";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "miketolly@gmail.com";
      author = "Michael Tolly";
      homepage = "http://github.com/mtolly/conduit-audio";
      url = "";
      synopsis = "conduit-audio interface to the libsamplerate resampling library";
      description = "A binding to the @libsamplerate@ library for use with @conduit-audio@,\nto resample audio streams.\n\nRequires the @libsamplerate@ library.\nOn Ubuntu, @apt-get install libsamplerate0-dev@;\non Mac with Homebrew, @brew install libsamplerate@.\n\nNote that unless you have a commercial license, @libsamplerate@ is GPL licensed.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.conduit-audio)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
          (hsPkgs.vector)
        ];
        libs = [ (pkgs."samplerate") ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
    };
  }