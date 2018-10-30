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
        name = "music-parts";
        version = "1.9.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Musical instruments, parts and playing techniques.";
      description = "Abstract representation of musical parts and instruments.\n\nThis library is part of the Music Suite, see <http://music-suite.github.io>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.monadplus)
          (hsPkgs.aeson)
          (hsPkgs.lens)
          (hsPkgs.semigroups)
          (hsPkgs.data-default)
          (hsPkgs.adjunctions)
          (hsPkgs.roman-numerals)
          (hsPkgs.cassava)
          (hsPkgs.bytestring)
          (hsPkgs.vector-space)
          (hsPkgs.vector-space-points)
          (hsPkgs.music-pitch)
          (hsPkgs.music-dynamics)
        ];
      };
    };
  }