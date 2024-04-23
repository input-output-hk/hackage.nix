{
  "0.1.0.0" = {
    sha256 = "5cd807eaf14a84a64339eab711f7d1d304ecc23450ab8672ffc3a22f9650a89a";
    revisions = {
      r0 = {
        nix = import ../hackage/adhoc-fixtures-0.1.0.0-r0-e4aab9f0a0e21abd188bb792e6866362e84a61c0cdc2e59b87b1ebaaa3c46b79.nix;
        revNum = 0;
        sha256 = "e4aab9f0a0e21abd188bb792e6866362e84a61c0cdc2e59b87b1ebaaa3c46b79";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "fe89914fbdfa7373e5bf0e20f0c40e271e1776555b3c90021b7ecf196d9ab9b3";
    revisions = {
      r0 = {
        nix = import ../hackage/adhoc-fixtures-0.1.0.1-r0-22737c0b03ec649ecb1aee7871edf68662663316206b4385783b23d359f18248.nix;
        revNum = 0;
        sha256 = "22737c0b03ec649ecb1aee7871edf68662663316206b4385783b23d359f18248";
      };
      default = "r0";
    };
  };
}