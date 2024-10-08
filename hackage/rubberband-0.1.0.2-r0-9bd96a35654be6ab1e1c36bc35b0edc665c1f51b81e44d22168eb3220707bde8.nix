{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rubberband"; version = "0.1.0.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "miketolly@gmail.com";
      author = "Michael Tolly";
      homepage = "https://github.com/mtolly/rubberband";
      url = "";
      synopsis = "Binding to the C++ audio stretching library Rubber Band";
      description = "<http://breakfastquay.com/rubberband/ Rubber Band Library>\nis a high quality software library for audio\ntime-stretching and pitch-shifting. It permits you to\nchange the tempo and pitch of an audio stream or recording\ndynamically and independently of one another.\n\nRubber Band Library is open source software under the GNU\nGeneral Public License. If you want to distribute it in a\nproprietary commercial application, you need to\n<http://breakfastquay.com/rubberband/license.html buy a license>.\n\nThis is a binding to Rubber Band Library v1.8.1.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        libs = [
          (pkgs."rubberband" or (errorHandler.sysDepError "rubberband"))
        ];
        pkgconfig = [
          (pkgconfPkgs."rubberband" or (errorHandler.pkgConfDepError "rubberband"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
      tests = {
        "test-rubberband" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rubberband" or (errorHandler.buildDepError "rubberband"))
          ];
          buildable = true;
        };
      };
    };
  }