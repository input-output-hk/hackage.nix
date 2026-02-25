{
  "0.1.0.0" = {
    sha256 = "090745abb0b0c3bf5f1d7a6dc01f7664e013e96e731820e3947774841b6a911a";
    revisions = {
      r0 = {
        nix = import ../hackage/pgmq-migration-0.1.0.0-r0-b07928d89632f95e9fa5ac66feeb4f222fd3bb2d2da99c035303fe1bc5612e8f.nix;
        revNum = 0;
        sha256 = "b07928d89632f95e9fa5ac66feeb4f222fd3bb2d2da99c035303fe1bc5612e8f";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "0da2c9183e01ab41d3e593d416356390c9f64f9fc32caf8a58e545fd1450a8b1";
    revisions = {
      r0 = {
        nix = import ../hackage/pgmq-migration-0.1.1.0-r0-ee353710327e8b1703f6b81ed897fcdd33ffb24ff3761200f4446ae0dad95baf.nix;
        revNum = 0;
        sha256 = "ee353710327e8b1703f6b81ed897fcdd33ffb24ff3761200f4446ae0dad95baf";
      };
      default = "r0";
    };
  };
}