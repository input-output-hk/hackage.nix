{
  "0.1.0.0" = {
    sha256 = "47542718971da69b8edde5447a89be892918ae24c9b5d8527c6d6ef707377ad6";
    revisions = {
      r0 = {
        nix = import ../hackage/batching-0.1.0.0-r0-50fde20d30fcc9bd420e96f61c97926f9564cdd38e69cdfeab63f52607c1024c.nix;
        revNum = 0;
        sha256 = "50fde20d30fcc9bd420e96f61c97926f9564cdd38e69cdfeab63f52607c1024c";
        };
      r1 = {
        nix = import ../hackage/batching-0.1.0.0-r1-3558e71b7c04c6cddabf73ce70560b7eefe804a5f90d27c55279a85940d2e06a.nix;
        revNum = 1;
        sha256 = "3558e71b7c04c6cddabf73ce70560b7eefe804a5f90d27c55279a85940d2e06a";
        };
      r2 = {
        nix = import ../hackage/batching-0.1.0.0-r2-1d29b0dd225827361ba3c7fc64a91037c9f111aeab942ffae1eec1f3b92ea2fa.nix;
        revNum = 2;
        sha256 = "1d29b0dd225827361ba3c7fc64a91037c9f111aeab942ffae1eec1f3b92ea2fa";
        };
      default = "r2";
      };
    };
  }