{
  "0.1.0.0" = {
    sha256 = "8a9cf5f511efec749cbdd8ebe801b573a57f0f592758285d530adca7ac636d0a";
    revisions = {
      r0 = {
        nix = import ../hackage/dyepack-0.1.0.0-r0-33644af36438675ed2405f5194fa487a698ebd711faeffa3007a8e9940d8c8dc.nix;
        revNum = 0;
        sha256 = "33644af36438675ed2405f5194fa487a698ebd711faeffa3007a8e9940d8c8dc";
        };
      r1 = {
        nix = import ../hackage/dyepack-0.1.0.0-r1-7893ab1dfaaa293625ba4b7f389c3ad613ee969f69daaef0134a6497c4585b77.nix;
        revNum = 1;
        sha256 = "7893ab1dfaaa293625ba4b7f389c3ad613ee969f69daaef0134a6497c4585b77";
        };
      default = "r1";
      };
    };
  }