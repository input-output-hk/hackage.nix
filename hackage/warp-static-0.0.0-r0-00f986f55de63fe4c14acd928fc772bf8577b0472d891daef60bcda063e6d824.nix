{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "warp-static";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/warp-static";
      url = "";
      synopsis = "Static file server based on Warp and wai-app-static";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "warp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.warp)
            (hsPkgs.wai-app-static)
            (hsPkgs.cmdargs)
          ];
        };
      };
    };
  }