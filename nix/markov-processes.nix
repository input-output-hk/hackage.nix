{
  "0.0.2" = {
    sha256 = "68385ba141e12ea66a27e0b09ba9f26d8b675a5c79b4766b6e8316e09b4ba0dd";
    revisions = {
      r0 = {
        nix = import ../hackage/markov-processes-0.0.2-r0-b9ca6d4e84ecf6a85f1cf55c9343272b4f8829a242b2d583c007f14a86bc996a.nix;
        revNum = 0;
        sha256 = "b9ca6d4e84ecf6a85f1cf55c9343272b4f8829a242b2d583c007f14a86bc996a";
        };
      r1 = {
        nix = import ../hackage/markov-processes-0.0.2-r1-cb6f24fe270f17c9c3b1b986ae4049a058cb3601995e092ae894c8e4f7eadafc.nix;
        revNum = 1;
        sha256 = "cb6f24fe270f17c9c3b1b986ae4049a058cb3601995e092ae894c8e4f7eadafc";
        };
      default = "r1";
      };
    };
  }