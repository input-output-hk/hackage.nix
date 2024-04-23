{
  "0.1" = {
    sha256 = "c2d3d58c55361c2b90b4ed50bff2362b1b7f280da64e899ec1062b7fbb527bc9";
    revisions = {
      r0 = {
        nix = import ../hackage/RxHaskell-0.1-r0-85c8d60f874061f7d61fed9b4064c46d10a4bcf7ee5f6ba771c15402c80db75b.nix;
        revNum = 0;
        sha256 = "85c8d60f874061f7d61fed9b4064c46d10a4bcf7ee5f6ba771c15402c80db75b";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "740f96baaf41bccfdb51f5a2cdded0d6dc584a9e55becb4cfe9be476e7d69d5f";
    revisions = {
      r0 = {
        nix = import ../hackage/RxHaskell-0.2-r0-46a5f5bc3abba7ebc158c23b8791b35819a964ca3a744c924b88d2875498df06.nix;
        revNum = 0;
        sha256 = "46a5f5bc3abba7ebc158c23b8791b35819a964ca3a744c924b88d2875498df06";
      };
      default = "r0";
    };
  };
}