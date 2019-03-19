{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wshterm"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019 Luke Clifton";
      maintainer = "lukec@themk.net";
      author = "Luke Clifton";
      homepage = "";
      url = "";
      synopsis = "Terminal emulator over websockets.";
      description = "wshterm wraps google's hterm library and allows you to run\nterminal applications in a browser.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "wshterm" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.file-embed)
            (hsPkgs.posix-pty)
            (hsPkgs.process)
            (hsPkgs.wai)
            (hsPkgs.wai-app-static)
            (hsPkgs.wai-websockets)
            (hsPkgs.warp)
            (hsPkgs.websockets)
            ];
          };
        };
      };
    }