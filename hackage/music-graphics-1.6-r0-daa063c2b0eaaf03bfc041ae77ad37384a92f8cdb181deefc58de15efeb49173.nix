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
        name = "music-graphics";
        version = "1.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund <hans@hanshoglund.se>";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Diagrams-based visualization of musical data structures.";
      description = "To be written.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.music-score)
          (hsPkgs.music-pitch)
          (hsPkgs.diagrams-core)
          (hsPkgs.diagrams-svg)
          (hsPkgs.bytestring)
          (hsPkgs.blaze-svg)
          (hsPkgs.process)
          (hsPkgs.lens)
          (hsPkgs.music-preludes)
          (hsPkgs.diagrams-lib)
        ];
      };
    };
  }