{
  "0.1.0.0" = {
    sha256 = "6b94bd4f41fc9a4ff58dd8741ba0cb618d804ca0362c6804348ecb5842831c77";
    revisions = {
      r0 = {
        nix = import ../hackage/aws-configuration-tools-0.1.0.0-r0-f3170c6a03b361268f16165988b5dd6271bcd630420f058156dc8c8aed9a328a.nix;
        revNum = 0;
        sha256 = "f3170c6a03b361268f16165988b5dd6271bcd630420f058156dc8c8aed9a328a";
      };
      r1 = {
        nix = import ../hackage/aws-configuration-tools-0.1.0.0-r1-171bfb73fc6d48401eaca091a3f2cb061b853ce779f7370676f210f7adcf06a3.nix;
        revNum = 1;
        sha256 = "171bfb73fc6d48401eaca091a3f2cb061b853ce779f7370676f210f7adcf06a3";
      };
      r2 = {
        nix = import ../hackage/aws-configuration-tools-0.1.0.0-r2-536eacac6f54fbeb3e823d5b751eaa8cf1bb45a69f1d0bf54bdbff6245eb93e9.nix;
        revNum = 2;
        sha256 = "536eacac6f54fbeb3e823d5b751eaa8cf1bb45a69f1d0bf54bdbff6245eb93e9";
      };
      default = "r2";
    };
  };
}