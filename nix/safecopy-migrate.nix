{
  "0.1.0.0" = {
    sha256 = "65334ea2498a82b9938fdd3097b9892c72ab6d74647764b46d51bff9110f44af";
    revisions = {
      r0 = {
        nix = import ../hackage/safecopy-migrate-0.1.0.0-r0-0b299f23a0dcc669b844f155dea99c3af483cf6b592bf1861010067ce23a6df0.nix;
        revNum = 0;
        sha256 = "0b299f23a0dcc669b844f155dea99c3af483cf6b592bf1861010067ce23a6df0";
      };
      r1 = {
        nix = import ../hackage/safecopy-migrate-0.1.0.0-r1-78aa667889ada98f1f8022ea7b6dc1e5396d15de64b40c66a66977632fccc0f4.nix;
        revNum = 1;
        sha256 = "78aa667889ada98f1f8022ea7b6dc1e5396d15de64b40c66a66977632fccc0f4";
      };
      default = "r1";
    };
  };
  "0.2.0" = {
    sha256 = "4a7c7923930ae68de6aec725dc547ceb448c3e1901324eead0cf848dcefb6193";
    revisions = {
      r0 = {
        nix = import ../hackage/safecopy-migrate-0.2.0-r0-70c7c31695a6c035bdee610c128eebfda6b002b8fe53995db6ff3b266bfa1b07.nix;
        revNum = 0;
        sha256 = "70c7c31695a6c035bdee610c128eebfda6b002b8fe53995db6ff3b266bfa1b07";
      };
      default = "r0";
    };
  };
}