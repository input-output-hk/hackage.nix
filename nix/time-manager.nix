{
  "0.0.0" = {
    sha256 = "90a616ed20b2119bb64f78f84230b6798cde22a35e87bc8d9ee08cdf1d90fcdb";
    revisions = {
      r0 = {
        nix = import ../hackage/time-manager-0.0.0-r0-d258b1d08f9b926823f5380e9201303b0ebeefe4f9e0047c0cbd7b6728135ee1.nix;
        revNum = 0;
        sha256 = "d258b1d08f9b926823f5380e9201303b0ebeefe4f9e0047c0cbd7b6728135ee1";
        };
      r1 = {
        nix = import ../hackage/time-manager-0.0.0-r1-5b6288815180428377d96be9fc3fa9d4d02b7aa2cc04839fb547409b8db68cc3.nix;
        revNum = 1;
        sha256 = "5b6288815180428377d96be9fc3fa9d4d02b7aa2cc04839fb547409b8db68cc3";
        };
      default = "r1";
      };
    };
  "0.0.1" = {
    sha256 = "07492523fabc69b8ec308f6276cc93df3dd060c91f23df2ac8a1f56d331ea05b";
    revisions = {
      r0 = {
        nix = import ../hackage/time-manager-0.0.1-r0-4445d343847df0d140972f3d45ca1429d71d186690c2f5fd67a049b4cf66f281.nix;
        revNum = 0;
        sha256 = "4445d343847df0d140972f3d45ca1429d71d186690c2f5fd67a049b4cf66f281";
        };
      default = "r0";
      };
    };
  }