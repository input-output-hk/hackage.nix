{
  "0.1.0.0" = {
    sha256 = "63f73abc746d39aaeb8e0a27dc47a54435bb7a5bc089ae9d17782ba4be24c461";
    revisions = {
      r0 = {
        nix = import ../hackage/maclight-0.1.0.0-r0-535b4f9e944ca31a931689b6d0ce079e7f0994ec594a4ebe9155a6ef5f7f4d0d.nix;
        revNum = 0;
        sha256 = "535b4f9e944ca31a931689b6d0ce079e7f0994ec594a4ebe9155a6ef5f7f4d0d";
      };
      r1 = {
        nix = import ../hackage/maclight-0.1.0.0-r1-d2c7a23f6855d632dc8d35e0d516d097ad646c0d717ac070809e0966baf0206c.nix;
        revNum = 1;
        sha256 = "d2c7a23f6855d632dc8d35e0d516d097ad646c0d717ac070809e0966baf0206c";
      };
      default = "r1";
    };
  };
}