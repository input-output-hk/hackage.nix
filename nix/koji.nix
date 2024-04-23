{
  "0.0.1" = {
    sha256 = "6839ff4eea02e1f51657279543bd008fe145e6c9a013788f93a7d15e6637bd7b";
    revisions = {
      r0 = {
        nix = import ../hackage/koji-0.0.1-r0-fee94ae59ef28e5126443b4201f2b9784555b75a0116246682da5b4e53e90beb.nix;
        revNum = 0;
        sha256 = "fee94ae59ef28e5126443b4201f2b9784555b75a0116246682da5b4e53e90beb";
      };
      default = "r0";
    };
  };
  "0.0.2" = {
    sha256 = "0d1ff84f700558574ab7145ede935352a849e9035cd35e745a208f424429f9fa";
    revisions = {
      r0 = {
        nix = import ../hackage/koji-0.0.2-r0-2abb3c08d6b840a8bb4dc9d7597fa3f43a0b57612b4ff914882b02aa12208853.nix;
        revNum = 0;
        sha256 = "2abb3c08d6b840a8bb4dc9d7597fa3f43a0b57612b4ff914882b02aa12208853";
      };
      default = "r0";
    };
  };
}