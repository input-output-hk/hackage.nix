{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rubberband"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "miketolly@gmail.com";
      author = "Michael Tolly";
      homepage = "http://breakfastquay.com/rubberband/";
      url = "";
      synopsis = "Binding to the C++ audio stretching library Rubber Band";
      description = "Rubber Band is a high quality software library for audio\ntime-stretching and pitch-shifting. It permits you to\nchange the tempo and pitch of an audio stream or recording\ndynamically and independently of one another.\n\nRubber Band is open source software under the GNU General\nPublic License. If you want to distribute it in a\nproprietary commercial application, you need to buy a\nlicense: <http://breakfastquay.com/rubberband/license.html>\n\nThis is a binding to Rubber Band library v1.8.1.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        libs = [
          (pkgs."rubberband" or ((hsPkgs.pkgs-errors).sysDepError "rubberband"))
          ];
        buildable = true;
        };
      };
    }