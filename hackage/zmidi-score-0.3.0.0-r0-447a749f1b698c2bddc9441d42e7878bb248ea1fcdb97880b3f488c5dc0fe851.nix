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
      specVersion = "1.8";
      identifier = {
        name = "zmidi-score";
        version = "0.3.0.0";
      };
      license = "LGPL-3.0-only";
      copyright = "2012--2014, Utrecht University";
      maintainer = "W.B.deHaas@uu.nl";
      author = "W. Bas de Haas";
      homepage = "https://bitbucket.org/bash/zmidi-score";
      url = "";
      synopsis = "Representing MIDI a simple score.";
      description = "Representing MIDI data as a simple score using the zmidi-core library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.zmidi-core)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.data-ordlist)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.binary)
          (hsPkgs.deepseq)
          (hsPkgs.deepseq-generics)
          (hsPkgs.parallel-io)
        ];
      };
    };
  }