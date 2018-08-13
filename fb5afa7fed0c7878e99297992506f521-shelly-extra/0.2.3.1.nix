{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "shelly-extra";
        version = "0.2.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Greg Weber";
      homepage = "https://github.com/yesodweb/Shelly.hs";
      url = "";
      synopsis = "shelly features that require extra dependencies";
      description = "A background job implementation for performing tasks in parallel.\n\nPlease see the shelly package. Shelly provides a single module for convenient systems programming in Haskell, similar in spirit to POSIX shells.\n\nshelly-extra is designed to be a grab bag for functionality that either\n\n* requires extra dependencies\n\n* is application specific and not generally applicable\n";
      buildType = "Simple";
    };
    components = {
      "shelly-extra" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.shelly)
          (hsPkgs.SafeSemaphore)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.shelly)
            (hsPkgs.SafeSemaphore)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }