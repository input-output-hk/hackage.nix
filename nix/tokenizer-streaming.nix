{
  "0.1.0.0" = {
    sha256 = "7ad9032bb195751f1bcb9fff6ca3e56d945deca4eb1ecb3cf3c6c86481f44ded";
    revisions = {
      r0 = {
        nix = import ../hackage/tokenizer-streaming-0.1.0.0-r0-b64ce7477eedc192e173567695182143949a5544d79c7ea6e11265478d705251.nix;
        revNum = 0;
        sha256 = "b64ce7477eedc192e173567695182143949a5544d79c7ea6e11265478d705251";
        };
      r1 = {
        nix = import ../hackage/tokenizer-streaming-0.1.0.0-r1-b92eccf6d29c78a111e4a983a9a33e839fe9f7c3544af35171a4d15a3c4bbcfb.nix;
        revNum = 1;
        sha256 = "b92eccf6d29c78a111e4a983a9a33e839fe9f7c3544af35171a4d15a3c4bbcfb";
        };
      default = "r1";
      };
    };
  "0.1.0.1" = {
    sha256 = "8a32cd9c17316b7c4ea606d72759d32fc1e096f9c3c5b1c57c2efc83fc728456";
    revisions = {
      r0 = {
        nix = import ../hackage/tokenizer-streaming-0.1.0.1-r0-6a4354d90d1fe708a0ed6dc4fea28396916ad7faeba58f4d1c1072b116caccaf.nix;
        revNum = 0;
        sha256 = "6a4354d90d1fe708a0ed6dc4fea28396916ad7faeba58f4d1c1072b116caccaf";
        };
      default = "r0";
      };
    };
  }