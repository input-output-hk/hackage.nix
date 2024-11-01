{
  "0.1.0.0" = {
    sha256 = "9df0d801d9608a0542e699f6faf79e57d83a5a179d9b892acf3845b5f7b89d7d";
    revisions = {
      r0 = {
        nix = import ../hackage/text-misc-yj-0.1.0.0-r0-0d8853471820c0bba526ee9de8cf2eb506657c20b82e34314e06f211d4521273.nix;
        revNum = 0;
        sha256 = "0d8853471820c0bba526ee9de8cf2eb506657c20b82e34314e06f211d4521273";
      };
      r1 = {
        nix = import ../hackage/text-misc-yj-0.1.0.0-r1-4fb2a598dc83f04b35ae9cee9811e551a1547d0527f7a42ea0fec6f893e58619.nix;
        revNum = 1;
        sha256 = "4fb2a598dc83f04b35ae9cee9811e551a1547d0527f7a42ea0fec6f893e58619";
      };
      r2 = {
        nix = import ../hackage/text-misc-yj-0.1.0.0-r2-66042424b825dcf9bca55c5a33ae8b5c0bd92fa9b7f7b90998d8c89078d3835a.nix;
        revNum = 2;
        sha256 = "66042424b825dcf9bca55c5a33ae8b5c0bd92fa9b7f7b90998d8c89078d3835a";
      };
      default = "r2";
    };
  };
}