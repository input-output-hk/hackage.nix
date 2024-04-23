{
  "0.1.0.0" = {
    sha256 = "147cb175fd9b409dd11292b3ce3ab98359a69a4fbd6c42fdcd4a75b0c7e8f7bf";
    revisions = {
      r0 = {
        nix = import ../hackage/mxnet-examples-0.1.0.0-r0-ab14db59809fbe2209906848d116d19efb39d8e33b425b55fc14832c43a29117.nix;
        revNum = 0;
        sha256 = "ab14db59809fbe2209906848d116d19efb39d8e33b425b55fc14832c43a29117";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "bccf0041d5837f17fd8394779a4482bed054bed0dcb98c82f96047ceb8b1bc57";
    revisions = {
      r0 = {
        nix = import ../hackage/mxnet-examples-0.2.0.0-r0-143ec21a58055aa4524486e8b4069f56a6e051c8954084b97f3a8cc87c60589c.nix;
        revNum = 0;
        sha256 = "143ec21a58055aa4524486e8b4069f56a6e051c8954084b97f3a8cc87c60589c";
      };
      default = "r0";
    };
  };
}