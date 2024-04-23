{
  "0.0.2" = {
    sha256 = "2e1f1070ff356a39d1597700bc03daa82c71b7d0493bb7d65226106373ca8bb4";
    revisions = {
      r0 = {
        nix = import ../hackage/mismi-s3-0.0.2-r0-5e305a416be6ae09356880fed6f57ed221b28bbe1486f56a96c95527934e0bdf.nix;
        revNum = 0;
        sha256 = "5e305a416be6ae09356880fed6f57ed221b28bbe1486f56a96c95527934e0bdf";
      };
      default = "r0";
    };
  };
  "0.0.3" = {
    sha256 = "08de34f821cc33598c29f1d9719f4cdf0b39cf7c87f6f45c94fab8b91db793b6";
    revisions = {
      r0 = {
        nix = import ../hackage/mismi-s3-0.0.3-r0-ca3f44e10f69cc9dd938425b463002e1baab3692b497e5b0257ee3706d64a47d.nix;
        revNum = 0;
        sha256 = "ca3f44e10f69cc9dd938425b463002e1baab3692b497e5b0257ee3706d64a47d";
      };
      default = "r0";
    };
  };
}