{
  "0.1" = {
    sha256 = "4117328151f195ce86a86a1615fa8d7cacbd9231abac97d86c466c4b6292f15e";
    revisions = {
      r0 = {
        nix = import ../hackage/AsyncRattus-0.1-r0-d7243af78dbbcbe9e379cb92b0d79dd3fde12338b67c937050361f0730932dff.nix;
        revNum = 0;
        sha256 = "d7243af78dbbcbe9e379cb92b0d79dd3fde12338b67c937050361f0730932dff";
        };
      r1 = {
        nix = import ../hackage/AsyncRattus-0.1-r1-26f55599fa8d7fec7388c42e7482daeaa252701d74c48e5f5188a13235308e91.nix;
        revNum = 1;
        sha256 = "26f55599fa8d7fec7388c42e7482daeaa252701d74c48e5f5188a13235308e91";
        };
      r2 = {
        nix = import ../hackage/AsyncRattus-0.1-r2-f2dc3e54e0f6f4f86ff1f4d2d7fc74d8ff682a6ee2a53d253e8c99e60aa01d2d.nix;
        revNum = 2;
        sha256 = "f2dc3e54e0f6f4f86ff1f4d2d7fc74d8ff682a6ee2a53d253e8c99e60aa01d2d";
        };
      default = "r2";
      };
    };
  }