{
  "1.0.0.0" = {
    sha256 = "d26f0e4dbc8b3ab0fb0973e0e4ede062ef5bd404128ea9a4def89e6616cdd33a";
    revisions = {
      r0 = {
        nix = import ../hackage/dataframe-huggingface-1.0.0.0-r0-23ab815498cd74ee516ec879953754a8aa194b449499b7ccbe1f7866b095c328.nix;
        revNum = 0;
        sha256 = "23ab815498cd74ee516ec879953754a8aa194b449499b7ccbe1f7866b095c328";
      };
      default = "r0";
    };
  };
  "1.2.0.2" = {
    sha256 = "f5f4e54c4c735387a25e165767e1173feb5e0c3e6eedb763a2b15ac4e26cc4b9";
    revisions = {
      r0 = {
        nix = import ../hackage/dataframe-huggingface-1.2.0.2-r0-c2e7da6d802621a44fe9b0d0cee7e2df02c6ca1950fae9faef4ea6e35ef1f986.nix;
        revNum = 0;
        sha256 = "c2e7da6d802621a44fe9b0d0cee7e2df02c6ca1950fae9faef4ea6e35ef1f986";
      };
      r1 = {
        nix = import ../hackage/dataframe-huggingface-1.2.0.2-r1-91eed02b2d7836b0a7f6cff671fbb257088d564dccdbfcb5e8e841ca11a4e9fd.nix;
        revNum = 1;
        sha256 = "91eed02b2d7836b0a7f6cff671fbb257088d564dccdbfcb5e8e841ca11a4e9fd";
      };
      default = "r1";
    };
  };
}