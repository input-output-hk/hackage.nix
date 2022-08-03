{
  "0.1.0.0" = {
    sha256 = "7dbd94fb25cb3c31c16b017a1b7be29c51ca691e6a62683b94452450f5ad595e";
    revisions = {
      r0 = {
        nix = import ../hackage/streamly-posix-0.1.0.0-r0-f0bb5b9c45286f9debe5489f7344805dd185594e70ce5f0a73cd9a9707db0f06.nix;
        revNum = 0;
        sha256 = "f0bb5b9c45286f9debe5489f7344805dd185594e70ce5f0a73cd9a9707db0f06";
        };
      default = "r0";
      };
    };
  "0.1.0.1" = {
    sha256 = "7baf84981f377924ec7448b7c6f815033f069a61c74ea534ff25d3f7a0add0fc";
    revisions = {
      r0 = {
        nix = import ../hackage/streamly-posix-0.1.0.1-r0-5d89b806281035d34020387ed99dde1ddab282c7ed66df3b7cd010b38fd3517b.nix;
        revNum = 0;
        sha256 = "5d89b806281035d34020387ed99dde1ddab282c7ed66df3b7cd010b38fd3517b";
        };
      r1 = {
        nix = import ../hackage/streamly-posix-0.1.0.1-r1-29cc4eeb309133e991a8e2d2ce55c947bef9d1675feb2d385b9773026bc51a12.nix;
        revNum = 1;
        sha256 = "29cc4eeb309133e991a8e2d2ce55c947bef9d1675feb2d385b9773026bc51a12";
        };
      default = "r1";
      };
    };
  "0.1.0.2" = {
    sha256 = "8ea6d67d38c8bdcedd9e1e2e46befe94703129f15701e7d7cb05340b26b1cc92";
    revisions = {
      r0 = {
        nix = import ../hackage/streamly-posix-0.1.0.2-r0-0c715ea0972be4a12a28570e0327df19794b6ecc29c089bd13a47a92e6305ab6.nix;
        revNum = 0;
        sha256 = "0c715ea0972be4a12a28570e0327df19794b6ecc29c089bd13a47a92e6305ab6";
        };
      default = "r0";
      };
    };
  }