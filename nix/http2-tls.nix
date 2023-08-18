{
  "0.0.0" = {
    sha256 = "10b395892819f1b4d131c73b094167f60ae63e34a5ee06266ab95d0e52242d3f";
    revisions = {
      r0 = {
        nix = import ../hackage/http2-tls-0.0.0-r0-fef524aec807bcb978022165fbaee4b36ea9ddbd1abc122853abdbc9d9bf864b.nix;
        revNum = 0;
        sha256 = "fef524aec807bcb978022165fbaee4b36ea9ddbd1abc122853abdbc9d9bf864b";
        };
      default = "r0";
      };
    };
  "0.0.1" = {
    sha256 = "cb9e51d1fea1f6c024b73c7e93ffdf2a76922eaca0218e897f0393f773c49880";
    revisions = {
      r0 = {
        nix = import ../hackage/http2-tls-0.0.1-r0-53650b0f7931a6c6e1e6dcbbc661228431bf856b35f84af38681daabb7406515.nix;
        revNum = 0;
        sha256 = "53650b0f7931a6c6e1e6dcbbc661228431bf856b35f84af38681daabb7406515";
        };
      default = "r0";
      };
    };
  }