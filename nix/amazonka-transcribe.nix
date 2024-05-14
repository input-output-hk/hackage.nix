{
  "1.6.0" = {
    sha256 = "e5a27e3bfb520f7e1fedf5a33da7cd300ea5ccd418a400dd196fd8c91721e30b";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-transcribe-1.6.0-r0-8886e425d50107db64024a7c336aa7d1b81d0498d3dd5db6e0bdb79e53170a36.nix;
        revNum = 0;
        sha256 = "8886e425d50107db64024a7c336aa7d1b81d0498d3dd5db6e0bdb79e53170a36";
      };
      r1 = {
        nix = import ../hackage/amazonka-transcribe-1.6.0-r1-dc400fd666c14a100b753f5f20d00dc2247a025ba38a34d946806caf1309ff9c.nix;
        revNum = 1;
        sha256 = "dc400fd666c14a100b753f5f20d00dc2247a025ba38a34d946806caf1309ff9c";
      };
      default = "r1";
    };
  };
  "1.6.1" = {
    sha256 = "3b96671d1935508a449ac51875939ce5740fdaca45b1f4a93d91617772ac6bde";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-transcribe-1.6.1-r0-d31e0b264f379f2d352b22230d2943ad2fdaa3aae98165f9fb761205d1b458ff.nix;
        revNum = 0;
        sha256 = "d31e0b264f379f2d352b22230d2943ad2fdaa3aae98165f9fb761205d1b458ff";
      };
      r1 = {
        nix = import ../hackage/amazonka-transcribe-1.6.1-r1-0ab02802d7877f68dd224de228754b23bee6a02827a0cd6ca60bd767781a1f2d.nix;
        revNum = 1;
        sha256 = "0ab02802d7877f68dd224de228754b23bee6a02827a0cd6ca60bd767781a1f2d";
      };
      default = "r1";
    };
  };
  "2.0" = {
    sha256 = "dce86485a20c80211da4a99cf94b9f9afc5fd2e972d7a3942164433332be56ce";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-transcribe-2.0-r0-e86fe21602d13ceeab9a73bb324197c2269608314009d31a1b4598640bb6d22f.nix;
        revNum = 0;
        sha256 = "e86fe21602d13ceeab9a73bb324197c2269608314009d31a1b4598640bb6d22f";
      };
      r1 = {
        nix = import ../hackage/amazonka-transcribe-2.0-r1-b4463f60bf0c6ffae9d4d777eff9c9331ddd9f27dda07a293f94642b1c9f6c7b.nix;
        revNum = 1;
        sha256 = "b4463f60bf0c6ffae9d4d777eff9c9331ddd9f27dda07a293f94642b1c9f6c7b";
      };
      default = "r1";
    };
  };
}