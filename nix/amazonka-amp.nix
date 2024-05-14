{
  "2.0" = {
    sha256 = "258a25ca7dec233471b7167bd5aff37a0decee9ad6e0cdfdf5d64509353f3394";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-amp-2.0-r0-395c77d878f19c8987dfdb4387c7220a3f28e294e2562c41417f1fc994c7d3da.nix;
        revNum = 0;
        sha256 = "395c77d878f19c8987dfdb4387c7220a3f28e294e2562c41417f1fc994c7d3da";
      };
      r1 = {
        nix = import ../hackage/amazonka-amp-2.0-r1-1926c382ada677ec6abd5b35fd403bf263e19add21c87da5c9aeea5e9b9a02bc.nix;
        revNum = 1;
        sha256 = "1926c382ada677ec6abd5b35fd403bf263e19add21c87da5c9aeea5e9b9a02bc";
      };
      default = "r1";
    };
  };
}