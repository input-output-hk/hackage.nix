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
  "0.0.1.0" = {
    sha256 = "1fcdcfdf59518ec2cf829e1bd3c45f753325c2fee62d41b3def823bb1d1ba9fb";
    revisions = {
      r0 = {
        nix = import ../hackage/http-client-rustls-0.0.1.0-r0-9a87a1b5de25ec5cebaa83b04670f423b910763378709f52cc90e54817e52982.nix;
        revNum = 0;
        sha256 = "9a87a1b5de25ec5cebaa83b04670f423b910763378709f52cc90e54817e52982";
      };
      default = "r0";
    };
  };
  "0.0.2.0" = {
    sha256 = "05505bf77e3d967b01187ffb55ea6c3f658ba446aeffeccdac16cbb6960d940d";
    revisions = {
      r0 = {
        nix = import ../hackage/http-client-rustls-0.0.2.0-r0-5765719731d8db1b474465dbc7ca1610370683ce98759404cf26bc6cfdb666b2.nix;
        revNum = 0;
        sha256 = "5765719731d8db1b474465dbc7ca1610370683ce98759404cf26bc6cfdb666b2";
      };
      default = "r0";
    };
  };
}