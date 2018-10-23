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
        version = "1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/yesodweb/wai";
      url = "";
      synopsis = "Static file server based on Warp and wai-app-static";
      description = "Serve up static files by running the warp executable. Based on Warp and wai-app-static.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "warp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.warp)
            (hsPkgs.wai-app-static)
            (hsPkgs.wai-extra)
            (hsPkgs.cmdargs)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.text)
          ];
        };
      };
    };
  }