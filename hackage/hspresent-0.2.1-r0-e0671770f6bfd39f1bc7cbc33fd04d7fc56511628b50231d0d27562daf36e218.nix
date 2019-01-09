{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hspresent"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 by Evan Klitzke";
      maintainer = "Evan Klitzke <evan@eklitzke.org>";
      author = "Evan Klitzke";
      homepage = "";
      url = "";
      synopsis = "A terminal presentation tool";
      description = "Hspresent is a simple program that lets you give powerpoint-like presentations\nin your terminal (for certain definitions of powerpoint-like). It's extremely\nbasic and unintelligent. Don't expect much.\n\nInvoke like `hspresent /path/to/your/presentation`. Left and right arrow keys\nmove between slides, and hitting `q` or `Ctrl-C` quits the presentation.\n\nThe file format is really simple right now. Slides are separated by lines\nconsisting of the characters `--`. You can put the single character `.` on a\nline to demarcate a split frame. A split frame really creates a new frame with\nthe contents of the previous frame copied at the front (this is similar to how\nbeamer works).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.vty)
          ];
        };
      exes = { "hspresent" = {}; };
      };
    }