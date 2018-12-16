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
      specVersion = "1.10";
      identifier = {
        name = "werewolf-slack";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "public@hjwylde.com";
      author = "Henry J. Wylde";
      homepage = "https://github.com/hjwylde/werewolf-slack";
      url = "";
      synopsis = "A Slack chat client for playing werewolf (https://github.com/hjwylde/werewolf)";
      description = "The game engine is based off of the party game Mafia, also known as Werewolf.\nSee https://github.com/hjwylde/werewolf-slack for help on running the chat client.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "werewolf-slack" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.extra)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-types)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.werewolf)
          ];
        };
      };
    };
  }