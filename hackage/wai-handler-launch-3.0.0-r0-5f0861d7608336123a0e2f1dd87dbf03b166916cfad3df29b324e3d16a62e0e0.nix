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
      specVersion = "1.6";
      identifier = {
        name = "wai-handler-launch";
        version = "3.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "";
      url = "";
      synopsis = "Launch a web app in the default browser.";
      description = "This handles cross-platform launching and inserts Javascript code to ping the server. When the server no longer receives pings, it shuts down.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wai)
          (hsPkgs.warp)
          (hsPkgs.http-types)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.streaming-commons)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.process);
        libs = pkgs.lib.optional (system.isWindows) (pkgs."Shell32");
      };
    };
  }