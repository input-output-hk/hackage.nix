{
  "0.0.0.0" = {
    sha256 = "ec3a6fe0c73173f0ddabaefb8c438d4bbc1d4968094b24550c8939e1fc633df5";
    revisions = {
      r0 = {
        nix = import ../hackage/stacker-0.0.0.0-r0-3aafc52922e6e86013004f71af91563b7ad6a24e782af8074ae628656e196343.nix;
        revNum = 0;
        sha256 = "3aafc52922e6e86013004f71af91563b7ad6a24e782af8074ae628656e196343";
      };
      default = "r0";
    };
  };
  "0.0.1.0" = {
    sha256 = "270c4e213a19f7edd2e90cbdf8127acada826334a3a40e27d26fa3ce56c2be7f";
    revisions = {
      r0 = {
        nix = import ../hackage/stacker-0.0.1.0-r0-51f47fa1144bd83f3784d22bcf6b45964a14e3b75ddbff4556b32035e94e6e52.nix;
        revNum = 0;
        sha256 = "51f47fa1144bd83f3784d22bcf6b45964a14e3b75ddbff4556b32035e94e6e52";
      };
      default = "r0";
    };
  };
}