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
      specVersion = "1.2";
      identifier = {
        name = "warp-static";
        version = "0.0.1";
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
            (hsPkgs.directory)
          ];
        };
      };
    };
  }