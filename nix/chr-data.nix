{
  "0.1.0.0" = {
    sha256 = "f02d84ac92880c8c458b9dfbff9814bf685a2f3630c737961174f8be70c6ec45";
    revisions = {
      r0 = {
        nix = import ../hackage/chr-data-0.1.0.0-r0-238562b891b775cbad9be2409276c33b196eacc2d02fe2a878c752a86c588ed6.nix;
        revNum = 0;
        sha256 = "238562b891b775cbad9be2409276c33b196eacc2d02fe2a878c752a86c588ed6";
      };
      r1 = {
        nix = import ../hackage/chr-data-0.1.0.0-r1-8468ec907b26fb726c3976ae2c5c4d49d601a5111fe8472f12744dad3e67f0f3.nix;
        revNum = 1;
        sha256 = "8468ec907b26fb726c3976ae2c5c4d49d601a5111fe8472f12744dad3e67f0f3";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "4ddb43f6244eeb01890ac9da1e096bce7de2b8c256e56d63466112cab5691671";
    revisions = {
      r0 = {
        nix = import ../hackage/chr-data-0.1.0.1-r0-8421c98d9a7ad8250cae0dcd6bfe51347e452275de3947500daf4688c433093b.nix;
        revNum = 0;
        sha256 = "8421c98d9a7ad8250cae0dcd6bfe51347e452275de3947500daf4688c433093b";
      };
      default = "r0";
    };
  };
}