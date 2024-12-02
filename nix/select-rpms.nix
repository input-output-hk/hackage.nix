{
  "0.1.0" = {
    sha256 = "a6e17234fdfdfa5d25bce5c3f9226276a7c015da1783eed68aa37f6059b0ca14";
    revisions = {
      r0 = {
        nix = import ../hackage/select-rpms-0.1.0-r0-c9496209e01f809c3ee434a110c37028759cc98281c924f2c14b74c8b1430e8d.nix;
        revNum = 0;
        sha256 = "c9496209e01f809c3ee434a110c37028759cc98281c924f2c14b74c8b1430e8d";
      };
      default = "r0";
    };
  };
  "0.2.0" = {
    sha256 = "8ceadb980f6857f4a762c560301c0bda022f210a44cd7bcb69186bd924908993";
    revisions = {
      r0 = {
        nix = import ../hackage/select-rpms-0.2.0-r0-6838e11080f3f868a8efcf9213a9bad42166cd3faf2eddfab3f8e1a5591bbfc0.nix;
        revNum = 0;
        sha256 = "6838e11080f3f868a8efcf9213a9bad42166cd3faf2eddfab3f8e1a5591bbfc0";
      };
      default = "r0";
    };
  };
}