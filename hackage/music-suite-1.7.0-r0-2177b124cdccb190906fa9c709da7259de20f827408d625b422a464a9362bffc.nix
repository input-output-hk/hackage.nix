{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "music-suite"; version = "1.7.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund <music-suite-discuss@googlegroups.com>";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "A set of libraries for composition, analysis and manipulation of music.";
      description = "This is a meta-library that imports the [Music Suite](see <http://music-suite.github.io/>).\n\nIt allows users to install all (stable) libraries in the suite as follows:\n\n> cabal install music-suite\n\nIf you wish to install an exerimental package, simply use @cabal install@ on the specific package instead.\n\n<<https://raw.githubusercontent.com/hanshoglund/music-docs/master/music-suite-deps.png>>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."music-dynamics-literal" or ((hsPkgs.pkgs-errors).buildDepError "music-dynamics-literal"))
          (hsPkgs."music-pitch-literal" or ((hsPkgs.pkgs-errors).buildDepError "music-pitch-literal"))
          (hsPkgs."abcnotation" or ((hsPkgs.pkgs-errors).buildDepError "abcnotation"))
          (hsPkgs."musicxml2" or ((hsPkgs.pkgs-errors).buildDepError "musicxml2"))
          (hsPkgs."lilypond" or ((hsPkgs.pkgs-errors).buildDepError "lilypond"))
          (hsPkgs."music-score" or ((hsPkgs.pkgs-errors).buildDepError "music-score"))
          (hsPkgs."music-pitch" or ((hsPkgs.pkgs-errors).buildDepError "music-pitch"))
          (hsPkgs."music-dynamics" or ((hsPkgs.pkgs-errors).buildDepError "music-dynamics"))
          (hsPkgs."music-articulation" or ((hsPkgs.pkgs-errors).buildDepError "music-articulation"))
          (hsPkgs."music-parts" or ((hsPkgs.pkgs-errors).buildDepError "music-parts"))
          (hsPkgs."music-preludes" or ((hsPkgs.pkgs-errors).buildDepError "music-preludes"))
          ];
        buildable = true;
        };
      };
    }