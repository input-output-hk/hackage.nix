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
        name = "confetti";
        version = "1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "avipress@gmail.com";
      author = "Avi Press";
      homepage = "https://github.com/aviaviavi/confetti";
      url = "";
      synopsis = "A simple config file swapping tool";
      description = "See the README on GitHub at <https://github.com/aviaviavi/confetti#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.text)
          (hsPkgs.text)
          (hsPkgs.unix)
          (hsPkgs.MissingH)
          (hsPkgs.time)
          (hsPkgs.yaml)
          (hsPkgs.filepath)
        ];
      };
      exes = {
        "confetti" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.cmdargs)
            (hsPkgs.confetti)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "confetti-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.confetti)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.text)
          ];
        };
      };
    };
  }