{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "network-websocket"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Michael Melanson, 2010";
      maintainer = "Michael Melanson <michael@michaelmelanson.net>";
      author = "Michael Melanson <michael@michaelmelanson.net>";
      homepage = "http://github.com/michaelmelanson/network-websocket";
      url = "";
      synopsis = "WebSocket library";
      description = "A library for creating Websocket servers";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."webserver" or ((hsPkgs.pkgs-errors).buildDepError "webserver"))
          ];
        buildable = true;
        };
      exes = {
        "websocket-echo" = {
          buildable = if !flags.buildexamples then false else true;
          };
        };
      };
    }