{
  "0.1.0.0" = {
    sha256 = "01d4e464a1ea447a075bad376eac4353666159f89f105f048f5034a09518e757";
    revisions = {
      r0 = {
        nix = import ../hackage/jpl-horizons-api-0.1.0.0-r0-c09c6ceb86410d1c6b4041fd16a0fdbd7a0c8d4b9bcad7494d92d08e916c1b00.nix;
        revNum = 0;
        sha256 = "c09c6ceb86410d1c6b4041fd16a0fdbd7a0c8d4b9bcad7494d92d08e916c1b00";
      };
      r1 = {
        nix = import ../hackage/jpl-horizons-api-0.1.0.0-r1-ad79508f87aee7d913228b83c82271344ef51b4b0899269cb0eae769be384c55.nix;
        revNum = 1;
        sha256 = "ad79508f87aee7d913228b83c82271344ef51b4b0899269cb0eae769be384c55";
      };
      default = "r1";
    };
  };
  "0.2.0.0" = {
    sha256 = "95b2ca0a29f8fea379df6534471f0fbf8c2f75e979d93ce233d7bffd813f9e88";
    revisions = {
      r0 = {
        nix = import ../hackage/jpl-horizons-api-0.2.0.0-r0-36b61860b1fc5f641d97a42c11134a8a174aa27f59ae2c7bb4b1f0bc16025714.nix;
        revNum = 0;
        sha256 = "36b61860b1fc5f641d97a42c11134a8a174aa27f59ae2c7bb4b1f0bc16025714";
      };
      default = "r0";
    };
  };
  "0.3.0.0" = {
    sha256 = "29c66ce6cd47a6f96cd6796a6dae67e26119f21bbf714f2f6255f10b1b18a92c";
    revisions = {
      r0 = {
        nix = import ../hackage/jpl-horizons-api-0.3.0.0-r0-1305e013f21bb28ed9a804226056d0848bacaa602af26c2c740b45dd198eb519.nix;
        revNum = 0;
        sha256 = "1305e013f21bb28ed9a804226056d0848bacaa602af26c2c740b45dd198eb519";
      };
      default = "r0";
    };
  };
  "0.4.0.0" = {
    sha256 = "3518ce14bd0ec93cc6bb78ce95d6e00fbdd0d71a2a61e4c1eb0e3fe7e137dc50";
    revisions = {
      r0 = {
        nix = import ../hackage/jpl-horizons-api-0.4.0.0-r0-b520cd0a60abe1e518679a7dc3ce0ec628c8fdce81a1372da6ed9e3069a1839e.nix;
        revNum = 0;
        sha256 = "b520cd0a60abe1e518679a7dc3ce0ec628c8fdce81a1372da6ed9e3069a1839e";
      };
      default = "r0";
    };
  };
}