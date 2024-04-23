{
  "0.1.0.0" = {
    sha256 = "27f498c8753b224f0d42dccfb6e10f1f1d4523d07fbf94b062b55d7348f81675";
    revisions = {
      r0 = {
        nix = import ../hackage/fair-0.1.0.0-r0-3f213f36131e9ae71cab96ff6755a64315b7ad98ecd3e4554aeb990633e4c01b.nix;
        revNum = 0;
        sha256 = "3f213f36131e9ae71cab96ff6755a64315b7ad98ecd3e4554aeb990633e4c01b";
      };
      r1 = {
        nix = import ../hackage/fair-0.1.0.0-r1-0f4affdbba0bc298eb3bab083ce2bea82b7e83f19c2ab37a9ae0483f84e83c71.nix;
        revNum = 1;
        sha256 = "0f4affdbba0bc298eb3bab083ce2bea82b7e83f19c2ab37a9ae0483f84e83c71";
      };
      default = "r1";
    };
  };
}