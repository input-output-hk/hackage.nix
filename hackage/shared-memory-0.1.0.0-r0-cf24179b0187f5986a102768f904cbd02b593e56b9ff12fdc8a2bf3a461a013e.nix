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
        name = "shared-memory";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Niklas Hambüchen <mail@nh2.me>";
      author = "Niklas Hambüchen <mail@nh2.me>";
      homepage = "https://github.com/nh2/shared-memory";
      url = "";
      synopsis = "POSIX shared memory";
      description = "POSIX shared memory library.";
      buildType = "Simple";
    };
    components = {
      "shared-memory" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unix)
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      tests = {
        "test-shared-memory-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.shared-memory)
            (hsPkgs.bytestring)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }