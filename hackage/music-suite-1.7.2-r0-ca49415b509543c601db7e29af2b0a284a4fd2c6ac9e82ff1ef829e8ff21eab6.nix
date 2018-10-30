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
        name = "music-suite";
        version = "1.7.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund <music-suite-discuss@googlegroups.com>";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "A set of libraries for composition, analysis and manipulation of music.";
      description = "This is a package without source code that imports Music Suite(see <http://music-suite.github.io/>).\n\nIt exists so that can install all (stable) packages in the suite as follows:\n\n> cabal install music-suite\n\nIf you wish to install an exerimental package, you can simply install it separately after\ninstalling @music-suite@.\n\n<<https://raw.githubusercontent.com/hanshoglund/music-docs/master/music-suite-deps.png>>";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.music-dynamics-literal)
          (hsPkgs.music-pitch-literal)
          (hsPkgs.abcnotation)
          (hsPkgs.musicxml2)
          (hsPkgs.lilypond)
          (hsPkgs.music-score)
          (hsPkgs.music-pitch)
          (hsPkgs.music-dynamics)
          (hsPkgs.music-articulation)
          (hsPkgs.music-parts)
          (hsPkgs.music-preludes)
        ];
      };
    };
  }