{
  "0.1.0.0" = {
    sha256 = "2d775549cf2bb3111d1e851d679f85a58ac2dbf282d9392b874bae72d306d28a";
    revisions = {
      r0 = {
        nix = import ../hackage/prettyprinter-vty-0.1.0.0-r0-332efd027ea2d857ab5c86bbf1ab66c1f68ce407f9a4d723a36c7921b37d1f6f.nix;
        revNum = 0;
        sha256 = "332efd027ea2d857ab5c86bbf1ab66c1f68ce407f9a4d723a36c7921b37d1f6f";
      };
      r1 = {
        nix = import ../hackage/prettyprinter-vty-0.1.0.0-r1-8d6d3274572f7ef80c108a5b84b56fe8acc6d0781bdc55f0f23abff14c861488.nix;
        revNum = 1;
        sha256 = "8d6d3274572f7ef80c108a5b84b56fe8acc6d0781bdc55f0f23abff14c861488";
      };
      default = "r1";
    };
  };
}