{
  "2.0" = {
    sha256 = "1a6119babce4647dea479773bcd81227369008629c49e822286b9afe5b1aa503";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-connectcampaigns-2.0-r0-0c09ce03613549e2b720fc871d25b4e000e5744fc5434d5f71b0fbb60d721546.nix;
        revNum = 0;
        sha256 = "0c09ce03613549e2b720fc871d25b4e000e5744fc5434d5f71b0fbb60d721546";
      };
      r1 = {
        nix = import ../hackage/amazonka-connectcampaigns-2.0-r1-c31cc767a3af62623b77cfe6133b2ff4b730f986da5274a1d2dd03af59242c10.nix;
        revNum = 1;
        sha256 = "c31cc767a3af62623b77cfe6133b2ff4b730f986da5274a1d2dd03af59242c10";
      };
      default = "r1";
    };
  };
}