{
  "0.1" = {
    sha256 = "84788cc5b7355b2635fb6173dce39bd11b3098c2a16c80ee838475067e35ffed";
    revisions = {
      r0 = {
        nix = import ../hackage/wuerfelschlange-0.1-r0-7df8583b67d54ce0ebc4feffb1cc3caf2eccbb57c42a03b7121eb6a0a0ead6db.nix;
        revNum = 0;
        sha256 = "7df8583b67d54ce0ebc4feffb1cc3caf2eccbb57c42a03b7121eb6a0a0ead6db";
      };
      r1 = {
        nix = import ../hackage/wuerfelschlange-0.1-r1-5db5ab9846eb6bd393964732da16c5da53ea5c1e86da592b1852dae86217f09d.nix;
        revNum = 1;
        sha256 = "5db5ab9846eb6bd393964732da16c5da53ea5c1e86da592b1852dae86217f09d";
      };
      default = "r1";
    };
  };
}