{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wai-logger-buffered"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Chris Coffey";
      maintainer = "chris@collegevine.com";
      author = "Chris Coffey";
      homepage = "https://github.com/ChrisCoffey/wai-logger-buffered#readme";
      url = "";
      synopsis = "A small library for performing buffered request logging rather than in-line logging";
      description = "see Readme.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.time)
          (hsPkgs.wai)
          ];
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.http-types)
            (hsPkgs.time)
            (hsPkgs.wai)
            (hsPkgs.wai-logger-buffered)
            (hsPkgs.warp)
            ];
          };
        };
      tests = {
        "wai-logger-buffered" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.time)
            (hsPkgs.wai)
            (hsPkgs.wai-logger-buffered)
            ];
          };
        };
      };
    }