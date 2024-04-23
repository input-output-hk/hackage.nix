{
  "0.1" = {
    sha256 = "2b524d894432312964190e0f423ad7496f4b4424c11caf8751e008f90880af95";
    revisions = {
      r0 = {
        nix = import ../hackage/hetris-0.1-r0-7ecd5587ab7588906886f3461e03571b056f8586ef6fbbccb327b2b94a22d543.nix;
        revNum = 0;
        sha256 = "7ecd5587ab7588906886f3461e03571b056f8586ef6fbbccb327b2b94a22d543";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "dd2399c0ab8d0bdc03c2cc41ed814b99c1ef083b425af0e3c1fdac3f7d7e406a";
    revisions = {
      r0 = {
        nix = import ../hackage/hetris-0.2-r0-c9a358d2137262e5c838b73ead541c5bc4efe925c7992d2b3d549b56d7230ab4.nix;
        revNum = 0;
        sha256 = "c9a358d2137262e5c838b73ead541c5bc4efe925c7992d2b3d549b56d7230ab4";
      };
      default = "r0";
    };
  };
}