{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hidden-char"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "2017 Richard Cook";
      maintainer = "rcook@rcook.org";
      author = "Richard Cook";
      homepage = "https://github.com/rcook/hidden-char#readme";
      url = "";
      synopsis = "Provides cross-platform getHiddenChar function";
      description = "This package provides a @getHiddenChar@ function which works reasonably consistently across the Windows, Linux and macOS platforms. @getHiddenChar@ yields a single character from the standard input device with buffering and echoing to standard output disabled.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      tests = {
        "hidden-char-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.hidden-char) (hsPkgs.hspec) ];
          };
        };
      };
    }