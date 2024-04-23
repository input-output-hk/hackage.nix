{
  "0.1.0" = {
    sha256 = "9f7c56af995b47791ee0ffa69c27d3de0b895125dbd5fe0c84d8b621467f90ba";
    revisions = {
      r0 = {
        nix = import ../hackage/barrier-0.1.0-r0-201edd3da9a10eac70c873bbe90981c85828547b05ea52958c3af6ec2e931105.nix;
        revNum = 0;
        sha256 = "201edd3da9a10eac70c873bbe90981c85828547b05ea52958c3af6ec2e931105";
      };
      r1 = {
        nix = import ../hackage/barrier-0.1.0-r1-2f75bd296d54424250895888d24eaec14bbdb35b355306306b6f8632052473bc.nix;
        revNum = 1;
        sha256 = "2f75bd296d54424250895888d24eaec14bbdb35b355306306b6f8632052473bc";
      };
      r2 = {
        nix = import ../hackage/barrier-0.1.0-r2-bcb912e8105f792720b8515ddf9b37d6a1eecd17cb325cc40bd688641068e9e6.nix;
        revNum = 2;
        sha256 = "bcb912e8105f792720b8515ddf9b37d6a1eecd17cb325cc40bd688641068e9e6";
      };
      default = "r2";
    };
  };
  "0.1.1" = {
    sha256 = "6395da01eea1984c7bcc85c624b1b5dfbe0b6b764adeed7b04c9fa4d8de91ed9";
    revisions = {
      r0 = {
        nix = import ../hackage/barrier-0.1.1-r0-18a88146162700174dd843177691b0924633fefa3a6984cdad86ed01a116cbd6.nix;
        revNum = 0;
        sha256 = "18a88146162700174dd843177691b0924633fefa3a6984cdad86ed01a116cbd6";
      };
      r1 = {
        nix = import ../hackage/barrier-0.1.1-r1-2021f84c3aba67bb635d72825d3bc0371942444dc014bc307b875071e29eea98.nix;
        revNum = 1;
        sha256 = "2021f84c3aba67bb635d72825d3bc0371942444dc014bc307b875071e29eea98";
      };
      r2 = {
        nix = import ../hackage/barrier-0.1.1-r2-a30ec854b48ca9488b3a407de5d4ec6420568f12f3af6bbca52b318880501b2c.nix;
        revNum = 2;
        sha256 = "a30ec854b48ca9488b3a407de5d4ec6420568f12f3af6bbca52b318880501b2c";
      };
      default = "r2";
    };
  };
}