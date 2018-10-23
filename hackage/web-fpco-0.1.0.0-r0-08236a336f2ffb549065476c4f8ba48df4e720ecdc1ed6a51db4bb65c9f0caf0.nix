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
        name = "web-fpco";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@fpcomplete.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/fpco/web-fpco";
      url = "";
      synopsis = "Wrappers for web frameworks to ease usage with the FP Complete environment.";
      description = "This package provides very simplistic wrappers to enable running code using the Snap and Happstack web frameworks on the FP Complete environment. The only modification to standard behavior is that the port number is read from the PORT environment variable as opposed to being specified on either the command line or in the code itself. If you're using Yesod, the function warpEnv is provided in the Yesod module itself, which performs the same function.\n\nFor the most part, it should be sufficient to import the relevant module from this package in place of the standard module, e.g. import @Snap.Http.Server.Env@ instead of @Snap.Http.Server@, or @Happstack.Server.Env@ instead of @Happstack.Server@.";
      buildType = "Simple";
    };
    components = {
      "web-fpco" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.safe)
          (hsPkgs.snap-core)
          (hsPkgs.snap-server)
          (hsPkgs.happstack-server)
        ];
      };
    };
  }