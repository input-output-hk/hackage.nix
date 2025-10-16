{
  "0.1.0.0" = {
    sha256 = "027adebf27effdf858ed4774e6552d0f542c316c6b779d1e25a63b8b52a3b041";
    revisions = {
      r0 = {
        nix = import ../hackage/Infinitree-0.1.0.0-r0-997e98f62804cc5f7b27f201b5bf026a29133b9ef173cfe8a55032cbaab09408.nix;
        revNum = 0;
        sha256 = "997e98f62804cc5f7b27f201b5bf026a29133b9ef173cfe8a55032cbaab09408";
      };
      r1 = {
        nix = import ../hackage/Infinitree-0.1.0.0-r1-2549e5433331d41f4c28015edca7a241e1166b88a829f91b56717d2497cd43cf.nix;
        revNum = 1;
        sha256 = "2549e5433331d41f4c28015edca7a241e1166b88a829f91b56717d2497cd43cf";
      };
      default = "r1";
    };
  };
}