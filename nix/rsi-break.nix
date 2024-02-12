{
  "0.1.0.0" = {
    sha256 = "8d7f314f01cab2c1916e30e5a6dddbe7cc588f6bc658e3765f55d5d83ca064bd";
    revisions = {
      r0 = {
        nix = import ../hackage/rsi-break-0.1.0.0-r0-3f0db297aaa7a24772ae29ea51613ed456eb6bd051fbfd5b00f55e6de4a84e97.nix;
        revNum = 0;
        sha256 = "3f0db297aaa7a24772ae29ea51613ed456eb6bd051fbfd5b00f55e6de4a84e97";
        };
      r1 = {
        nix = import ../hackage/rsi-break-0.1.0.0-r1-d200f62f244dbfe524f234521265a8851342b3efcb8c7d2f17ba2c8b11b1c5b5.nix;
        revNum = 1;
        sha256 = "d200f62f244dbfe524f234521265a8851342b3efcb8c7d2f17ba2c8b11b1c5b5";
        };
      default = "r1";
      };
    };
  }