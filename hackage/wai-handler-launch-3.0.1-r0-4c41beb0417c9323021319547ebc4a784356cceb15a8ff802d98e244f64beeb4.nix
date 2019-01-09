{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "wai-handler-launch"; version = "3.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "";
      url = "";
      synopsis = "Launch a web app in the default browser.";
      description = "API docs and the README are available at <http://www.stackage.org/package/wai-handler-launch>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.wai)
          (hsPkgs.warp)
          (hsPkgs.http-types)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.streaming-commons)
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.process);
        libs = (pkgs.lib).optionals (system.isWindows) [
          (pkgs."Shell32")
          (pkgs."msvcrt")
          ];
        };
      };
    }