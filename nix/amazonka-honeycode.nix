{
  "2.0" = {
    sha256 = "2766743056149cfc539e0b7f7410009360e5676388d09dcccdc5f93eb4e8e139";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-honeycode-2.0-r0-198cc7b403afb0db9cd7d158a4dc8f52bdec5837e515a662e42de48be1581783.nix;
        revNum = 0;
        sha256 = "198cc7b403afb0db9cd7d158a4dc8f52bdec5837e515a662e42de48be1581783";
      };
      r1 = {
        nix = import ../hackage/amazonka-honeycode-2.0-r1-97ce242439464cc5567cef877f25530b5822e489671551911071f40029c0c7b7.nix;
        revNum = 1;
        sha256 = "97ce242439464cc5567cef877f25530b5822e489671551911071f40029c0c7b7";
      };
      default = "r1";
    };
  };
}