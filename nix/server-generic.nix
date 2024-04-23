{
  "1.0.0" = {
    sha256 = "c8e5dec28ecd9cd91bbd7a52621b482ab58f903381e4dd29ef8eb88f8557ced9";
    revisions = {
      r0 = {
        nix = import ../hackage/server-generic-1.0.0-r0-07fef45b6d2599d3b70f99d4651bc3e6415cd3ef61326dafbca1f06f61cda1b7.nix;
        revNum = 0;
        sha256 = "07fef45b6d2599d3b70f99d4651bc3e6415cd3ef61326dafbca1f06f61cda1b7";
      };
      r1 = {
        nix = import ../hackage/server-generic-1.0.0-r1-f9ea66dd06141e1d4a5c430ce93765e28bdac27356d89352a5c4ece631285de3.nix;
        revNum = 1;
        sha256 = "f9ea66dd06141e1d4a5c430ce93765e28bdac27356d89352a5c4ece631285de3";
      };
      default = "r1";
    };
  };
}