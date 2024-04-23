{
  "0.3.1" = {
    sha256 = "03073694f6525f975db78dbc67c34e89bb27b95cf863d4a3a77dc6ef49d81dcc";
    revisions = {
      r0 = {
        nix = import ../hackage/crypton-connection-0.3.1-r0-4d0958537197956b536ea91718b1749949757022532f50b8f683290056a19021.nix;
        revNum = 0;
        sha256 = "4d0958537197956b536ea91718b1749949757022532f50b8f683290056a19021";
      };
      default = "r0";
    };
  };
  "0.3.2" = {
    sha256 = "208be23bc910f8e5f9431995b9c011ed376bb947d79f74c8f51a5e4ecd9e991e";
    revisions = {
      r0 = {
        nix = import ../hackage/crypton-connection-0.3.2-r0-c7937edc25ab022bcf167703f2ec5ab73b62908e545bb587d2aa42b33cd6f6cc.nix;
        revNum = 0;
        sha256 = "c7937edc25ab022bcf167703f2ec5ab73b62908e545bb587d2aa42b33cd6f6cc";
      };
      default = "r0";
    };
  };
}