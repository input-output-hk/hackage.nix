{
  "0.0.0.0" = {
    sha256 = "0a5af981f4f53960de5594858a1a7a0b996712ed1779f3b17afdc2c0306591e7";
    revisions = {
      r0 = {
        nix = import ../hackage/http-client-rustls-0.0.0.0-r0-13073a6f6db9fcd5d4fccbba11ea6d61b8266718aa3d33183fcaa1374a9daba3.nix;
        revNum = 0;
        sha256 = "13073a6f6db9fcd5d4fccbba11ea6d61b8266718aa3d33183fcaa1374a9daba3";
        };
      r1 = {
        nix = import ../hackage/http-client-rustls-0.0.0.0-r1-8e2db1be7ea5f0f433caff58c4e64e9dfed82741443593760ef7033ed73f1a62.nix;
        revNum = 1;
        sha256 = "8e2db1be7ea5f0f433caff58c4e64e9dfed82741443593760ef7033ed73f1a62";
        };
      default = "r1";
      };
    };
  }