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
        version = "0.9.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Greg Weber, Petr Rockai";
      homepage = "https://github.com/yesodweb/Shelly.hs";
      url = "";
      synopsis = "shell-like (systems) programming in Haskell";
      description = "Shelly provides a single module for convenient\nsystems programming in Haskell, similar in spirit to POSIX\nshells. Shelly:\n\n* is aimed at convenience and getting things done rather than\nbeing a demonstration of elegance.\n\n* has detailed and useful error messages\n\n* maintains its own environment, making it thread-safe.\n\n* is modern. It uses Text and system-filepath/system-fileio\n\nShelly is originally forked from the Shellish package.";
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
          (hsPkgs.SafeSemaphore)
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
            (hsPkgs.SafeSemaphore)
            (hsPkgs.unix-compat)
            (hsPkgs.system-filepath)
            (hsPkgs.system-fileio)
          ];
        };
      };
    };
  }