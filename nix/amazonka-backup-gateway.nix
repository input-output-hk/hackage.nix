{
  "2.0" = {
    sha256 = "d05b01eede614a45c5adde5184d1236ff4bf8b218221cf88a9f74683655b988f";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-backup-gateway-2.0-r0-733b907067d93a6beaa7ef23b00db9e8c5a46d8c21c4d9bd285b705ebc4d1911.nix;
        revNum = 0;
        sha256 = "733b907067d93a6beaa7ef23b00db9e8c5a46d8c21c4d9bd285b705ebc4d1911";
      };
      r1 = {
        nix = import ../hackage/amazonka-backup-gateway-2.0-r1-52621ce9a5b92c6db619f206eb469fd6b2c77c744dad089e9e0438cb37ca08e2.nix;
        revNum = 1;
        sha256 = "52621ce9a5b92c6db619f206eb469fd6b2c77c744dad089e9e0438cb37ca08e2";
      };
      default = "r1";
    };
  };
}