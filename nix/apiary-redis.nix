{
  "1.5.0" = {
    sha256 = "7bb77d2226905ce309603f5b0b4ee5018e3158de51642b1e50d162df0bbe6c11";
    revisions = {
      r0 = {
        nix = import ../hackage/apiary-redis-1.5.0-r0-5f3a36193ce1b35e77fcce26e33df0bff21b7ffcfd18bdac33f498acd0e4af22.nix;
        revNum = 0;
        sha256 = "5f3a36193ce1b35e77fcce26e33df0bff21b7ffcfd18bdac33f498acd0e4af22";
      };
      default = "r0";
    };
  };
  "1.5.1" = {
    sha256 = "945f8d27465330b9923998e7bd015c67ecd9ee067dcea5634ccd1e8d8b09352d";
    revisions = {
      r0 = {
        nix = import ../hackage/apiary-redis-1.5.1-r0-c604fa5bcefe997961f4721b00f6ad26352187a8870b93cd7f5841de38a7a605.nix;
        revNum = 0;
        sha256 = "c604fa5bcefe997961f4721b00f6ad26352187a8870b93cd7f5841de38a7a605";
      };
      default = "r0";
    };
  };
}