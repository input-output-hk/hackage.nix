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
        name = "diff-gestalt";
        version = "0.1.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "none";
      maintainer = "chrismwendt@gmail.com";
      author = "Chris Wendt";
      homepage = "http://github.com/chrismwendt/diff-gestalt";
      url = "";
      synopsis = "A diff algorithm based on recursive longest common substrings";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "diff-gestalt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Diff)
          (hsPkgs.string-similarity)
          (hsPkgs.KMP)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "diff-gestalt-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Diff)
            (hsPkgs.diff-gestalt)
          ];
        };
      };
    };
  }