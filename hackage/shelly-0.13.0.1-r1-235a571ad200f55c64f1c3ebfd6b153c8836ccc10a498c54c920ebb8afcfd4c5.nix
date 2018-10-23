{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "shelly";
        version = "0.13.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Greg Weber, Petr Rockai";
      homepage = "https://github.com/yesodweb/Shelly.hs";
      url = "";
      synopsis = "shell-like (systems) programming in Haskell";
      description = "Shelly provides convenient systems programming in Haskell,\nsimilar in spirit to POSIX shells. Shelly:\n\n* is aimed at convenience and getting things done rather than\nbeing a demonstration of elegance.\n\n* has detailed and useful error messages\n\n* maintains its own environment, making it thread-safe.\n\n* is modern, using Text and system-filepath/system-fileio\n\nShelly is originally forked from the Shellish package.\n\nSee the shelly-extra package for additional functionality.\n\nAn overview is available in the README: <https://github.com/yesodweb/Shelly.hs>";
      buildType = "Simple";
    };
    components = {
      "shelly" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.directory)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.unix-compat)
          (hsPkgs.system-filepath)
          (hsPkgs.system-fileio)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.unix-compat)
            (hsPkgs.system-filepath)
            (hsPkgs.system-fileio)
            (hsPkgs.hspec-discover)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }