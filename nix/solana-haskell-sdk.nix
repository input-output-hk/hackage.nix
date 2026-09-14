{
  "1.2.0.0" = {
    sha256 = "6936245de6061766c847b4791d6123c5431d753273bab96c3f20b71238d220ab";
    revisions = {
      r0 = {
        nix = import ../hackage/solana-haskell-sdk-1.2.0.0-r0-dc382f5aa63c16df178b40b356376233a3226f3f251d48a980f16df9b93317d7.nix;
        revNum = 0;
        sha256 = "dc382f5aa63c16df178b40b356376233a3226f3f251d48a980f16df9b93317d7";
      };
      default = "r0";
    };
  };
  "1.3.0.0" = {
    sha256 = "07e3348efae4d875b9f1f4d59464630c507ac5b8d7878d485dc8a90486f2bef7";
    revisions = {
      r0 = {
        nix = import ../hackage/solana-haskell-sdk-1.3.0.0-r0-7970d47ff417a581ae51c66b29384f32bf05741ec1778148922ed8c74849ecb0.nix;
        revNum = 0;
        sha256 = "7970d47ff417a581ae51c66b29384f32bf05741ec1778148922ed8c74849ecb0";
      };
      default = "r0";
    };
  };
}