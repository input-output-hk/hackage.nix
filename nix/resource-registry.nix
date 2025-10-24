{
  "0.1.0.0" = {
    sha256 = "b7bc79bb7825b6ad8debe572efc19492bbd51ff66ce059023b2180691c447d56";
    revisions = {
      r0 = {
        nix = import ../hackage/resource-registry-0.1.0.0-r0-f7580fea309d37cbfbbd46de74f8c23eea0eb0a9727512ebcb448e2db55db524.nix;
        revNum = 0;
        sha256 = "f7580fea309d37cbfbbd46de74f8c23eea0eb0a9727512ebcb448e2db55db524";
      };
      r1 = {
        nix = import ../hackage/resource-registry-0.1.0.0-r1-fcc802f44df2e156bab307a2de895241b184b122392264a770f204f07e8de647.nix;
        revNum = 1;
        sha256 = "fcc802f44df2e156bab307a2de895241b184b122392264a770f204f07e8de647";
      };
      default = "r1";
    };
  };
  "0.1.1.0" = {
    sha256 = "37edfa14c7d390fd29810061965e5053e243b5dfb46fad742025b1c95ab4907f";
    revisions = {
      r0 = {
        nix = import ../hackage/resource-registry-0.1.1.0-r0-d2b430f31e9a5a32fa669af0be22316ec9de733339cf2bfdc1269a7e67784fc2.nix;
        revNum = 0;
        sha256 = "d2b430f31e9a5a32fa669af0be22316ec9de733339cf2bfdc1269a7e67784fc2";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "2d54381cec1c6c362ae073a1e19280be32b1aa50db540bf7c1a5bcd97cda7baa";
    revisions = {
      r0 = {
        nix = import ../hackage/resource-registry-0.2.0.0-r0-d272dbd668edd24cbe83b23fcbfcff91d86f7b3a3983e466ee0fd7ddbcf66959.nix;
        revNum = 0;
        sha256 = "d272dbd668edd24cbe83b23fcbfcff91d86f7b3a3983e466ee0fd7ddbcf66959";
      };
      default = "r0";
    };
  };
}