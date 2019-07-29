{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tasty-tmux"; version = "0.1.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "Copyright 2017-2019  Róman Joost and Fraser Tweedale";
      maintainer = "roman@bromeco.de";
      author = "Róman Joost and Fraser Tweedale";
      homepage = "https://github.com/purebred-mua/tasty-tmux";
      url = "";
      synopsis = "Terminal user acceptance testing (UAT) via tmux";
      description = "Library for user acceptance testing (UAT) using tmux as the\nvehicle for running programs and interacting with them.\n\nSee \"Test.Tasty.Tmux\" for usage examples and API documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.typed-process)
          (hsPkgs.regex-posix)
          (hsPkgs.tasty)
          (hsPkgs.tasty-hunit)
          ];
        };
      };
    }