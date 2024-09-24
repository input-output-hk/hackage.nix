{
  "0.1.0.0" = {
    sha256 = "b0335184608cba3edc342cf4ac60bfe5472838c10084403798768e67a82706ef";
    revisions = {
      r0 = {
        nix = import ../hackage/cassava-th-0.1.0.0-r0-870514ed28c3c8d9ef8e4daccdf5e0e44ff302a9b5024fcdeba177e32b59cebd.nix;
        revNum = 0;
        sha256 = "870514ed28c3c8d9ef8e4daccdf5e0e44ff302a9b5024fcdeba177e32b59cebd";
      };
      r1 = {
        nix = import ../hackage/cassava-th-0.1.0.0-r1-53a0381c099c32d3adeda5d8290102a0f6200c83238fcd49f001ebd7c3c339fc.nix;
        revNum = 1;
        sha256 = "53a0381c099c32d3adeda5d8290102a0f6200c83238fcd49f001ebd7c3c339fc";
      };
      default = "r1";
    };
  };
}