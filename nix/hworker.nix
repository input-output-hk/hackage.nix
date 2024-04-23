{
  "0.1.0.0" = {
    sha256 = "2af1e6cd3e8b6f7245176c31ded7c8b544fb9cfc4a20efd5b3a2b08995f9ec00";
    revisions = {
      r0 = {
        nix = import ../hackage/hworker-0.1.0.0-r0-729f16f0085d471f3de934d574caa63a5c60cf11000af5285cfbb93f31dda428.nix;
        revNum = 0;
        sha256 = "729f16f0085d471f3de934d574caa63a5c60cf11000af5285cfbb93f31dda428";
      };
      r1 = {
        nix = import ../hackage/hworker-0.1.0.0-r1-3d3a4c6b371142330f0f6002bf272406b0b6acb1fe7d0b90aff47a40949eb4ba.nix;
        revNum = 1;
        sha256 = "3d3a4c6b371142330f0f6002bf272406b0b6acb1fe7d0b90aff47a40949eb4ba";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "34cbcc4db8f190ab0dc02a072adcf1fc75b7beab7e545982872bf265a1223f1d";
    revisions = {
      r0 = {
        nix = import ../hackage/hworker-0.1.0.1-r0-42d7f07e14c98e5ecb5aac0db34434f36ff0219aab5e98427317bce9df72d210.nix;
        revNum = 0;
        sha256 = "42d7f07e14c98e5ecb5aac0db34434f36ff0219aab5e98427317bce9df72d210";
      };
      r1 = {
        nix = import ../hackage/hworker-0.1.0.1-r1-c5f32a8283ca858e67b2a49a51c41b36aa661228eca1bc6fc4c22293ddbe4b70.nix;
        revNum = 1;
        sha256 = "c5f32a8283ca858e67b2a49a51c41b36aa661228eca1bc6fc4c22293ddbe4b70";
      };
      default = "r1";
    };
  };
}