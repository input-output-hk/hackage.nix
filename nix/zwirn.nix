{
  "0.1.0.0" = {
    sha256 = "2631bd4592953057dab8f72fdb377f91d4d24db5eed05ec861bd3cca521d052b";
    revisions = {
      r0 = {
        nix = import ../hackage/zwirn-0.1.0.0-r0-c650642881d84d56a370a7bb06c014d39445f3d88579ac431a79ec04f1f7dce1.nix;
        revNum = 0;
        sha256 = "c650642881d84d56a370a7bb06c014d39445f3d88579ac431a79ec04f1f7dce1";
      };
      r1 = {
        nix = import ../hackage/zwirn-0.1.0.0-r1-95db2549ebe95563978c18437681e33327603aa73f729f80ee12a4cdbcf191a1.nix;
        revNum = 1;
        sha256 = "95db2549ebe95563978c18437681e33327603aa73f729f80ee12a4cdbcf191a1";
      };
      default = "r1";
    };
  };
  "0.2.2.0" = {
    sha256 = "6ccfd609920f4310b05f8ca5c742447348e20f4f4bd150a1a1058ef25d10abeb";
    revisions = {
      r0 = {
        nix = import ../hackage/zwirn-0.2.2.0-r0-629820cb330aa3dfbcd4769983254b5366f3c9d2f5efbf9b389e4fe1a458f7f2.nix;
        revNum = 0;
        sha256 = "629820cb330aa3dfbcd4769983254b5366f3c9d2f5efbf9b389e4fe1a458f7f2";
      };
      default = "r0";
    };
  };
}