{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "network-websocket"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Melanson <michael@michaelmelanson.net>";
      author = "Michael Melanson <michael@michaelmelanson.net>";
      homepage = "";
      url = "";
      synopsis = "WebSocket library";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.network) (hsPkgs.haskell98) ];
        };
      };
    }