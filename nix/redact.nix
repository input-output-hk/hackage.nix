{
  "0.4.0.0" = {
    sha256 = "49a048f92c92f3a22de4d91ccb995acc48213e20bea765cedf156da9b0c61a60";
    revisions = {
      r0 = {
        nix = import ../hackage/redact-0.4.0.0-r0-1287c48e8cd5b278c00b01f65039a3eb69c719412f51c363c125352a3b3ae5b7.nix;
        revNum = 0;
        sha256 = "1287c48e8cd5b278c00b01f65039a3eb69c719412f51c363c125352a3b3ae5b7";
      };
      r1 = {
        nix = import ../hackage/redact-0.4.0.0-r1-faa821c1fbfea5c2e4bf2d00f27b4b60665deca90cc7e0025d1ab981c85fbb3d.nix;
        revNum = 1;
        sha256 = "faa821c1fbfea5c2e4bf2d00f27b4b60665deca90cc7e0025d1ab981c85fbb3d";
      };
      default = "r1";
    };
  };
  "0.5.0.0" = {
    sha256 = "289daa440797dd6735ac2d48ab89c39e5ae933f90161ee5a64ebea14e9743639";
    revisions = {
      r0 = {
        nix = import ../hackage/redact-0.5.0.0-r0-83d221e522f4b38b00a559c54442f0156a253c983fd3de0d2321627cf0abf22c.nix;
        revNum = 0;
        sha256 = "83d221e522f4b38b00a559c54442f0156a253c983fd3de0d2321627cf0abf22c";
      };
      r1 = {
        nix = import ../hackage/redact-0.5.0.0-r1-ce36676701fe46aaa66ff5636333ae9366c93a5812c101d2e5d0d15aae3281e9.nix;
        revNum = 1;
        sha256 = "ce36676701fe46aaa66ff5636333ae9366c93a5812c101d2e5d0d15aae3281e9";
      };
      r2 = {
        nix = import ../hackage/redact-0.5.0.0-r2-2ae4a98c22fa7474763c3f3a469c3cd3545815ee733a4dfd5ef0b8cbcfa39d9a.nix;
        revNum = 2;
        sha256 = "2ae4a98c22fa7474763c3f3a469c3cd3545815ee733a4dfd5ef0b8cbcfa39d9a";
      };
      r3 = {
        nix = import ../hackage/redact-0.5.0.0-r3-54c8e939ce3fc01b1ace85e3fa42f6dcee137629dd9723914cdc1dc136472e17.nix;
        revNum = 3;
        sha256 = "54c8e939ce3fc01b1ace85e3fa42f6dcee137629dd9723914cdc1dc136472e17";
      };
      default = "r3";
    };
  };
  "0.6.0.0" = {
    sha256 = "0aaa9977c9956b47e39e29195ae53545ba158cf68291a50f0b278b94bfe18177";
    revisions = {
      r0 = {
        nix = import ../hackage/redact-0.6.0.0-r0-f7922b325f6248231d81dfa73350bbdf2a5830ef8f8af754009f266b1c1a83b0.nix;
        revNum = 0;
        sha256 = "f7922b325f6248231d81dfa73350bbdf2a5830ef8f8af754009f266b1c1a83b0";
      };
      default = "r0";
    };
  };
}