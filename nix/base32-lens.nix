{
  "0.1.0.0" = {
    sha256 = "76d378df066e2851f975cc0702c6101fa111c68480cb4a19939e33e4cb570a7a";
    revisions = {
      r0 = {
        nix = import ../hackage/base32-lens-0.1.0.0-r0-d54fe262e4fd2399c1b06f2c945c03f9a620bb1ead3371a8c3c0a3e778787081.nix;
        revNum = 0;
        sha256 = "d54fe262e4fd2399c1b06f2c945c03f9a620bb1ead3371a8c3c0a3e778787081";
      };
      r1 = {
        nix = import ../hackage/base32-lens-0.1.0.0-r1-605b20f926ace5113e12a9b7cd9ba13802ecb8e1b5ef75d6600bba7c056b49ea.nix;
        revNum = 1;
        sha256 = "605b20f926ace5113e12a9b7cd9ba13802ecb8e1b5ef75d6600bba7c056b49ea";
      };
      default = "r1";
    };
  };
  "0.1.1.0" = {
    sha256 = "6b5c3f2dc1fee6473bb11a14ddad8e9bf91e82f9a7040c9ad1880803759715a5";
    revisions = {
      r0 = {
        nix = import ../hackage/base32-lens-0.1.1.0-r0-d92013f2e5e496e00ecf440a136b326356ac31372b5acc67699bfd909a9ed023.nix;
        revNum = 0;
        sha256 = "d92013f2e5e496e00ecf440a136b326356ac31372b5acc67699bfd909a9ed023";
      };
      default = "r0";
    };
  };
  "0.1.1.1" = {
    sha256 = "462f149520a3d70d3c8b0b3a6e5bd410e3f4ead295971164cebafc7d6a125571";
    revisions = {
      r0 = {
        nix = import ../hackage/base32-lens-0.1.1.1-r0-18524d9143cf9042ca36eb31d3de79be7fd82c0a9e5166071e2779416ab8988f.nix;
        revNum = 0;
        sha256 = "18524d9143cf9042ca36eb31d3de79be7fd82c0a9e5166071e2779416ab8988f";
      };
      default = "r0";
    };
  };
}