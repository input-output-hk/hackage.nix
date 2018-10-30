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
        name = "no-buffering-workaround";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "2015 Aaron Rotenberg";
      maintainer = "adrotenberg (at) gmail.com";
      author = "Aaron Rotenberg";
      homepage = "http://github.com/arotenberg/no-buffering-workaround#readme";
      url = "";
      synopsis = "Workaround for GHC bug #2189.";
      description = "This package exists as a workaround for GHC bug #2189, \\\"@hSetBuffering stdin\nNoBuffering@ doesn't work on Windows\\\". It provides functionality for reading\nfrom standard input without buffering, in a way that works under GHC on\nWindows as well as other configurations. This is useful for key-driven console\napplications such as roguelikes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }