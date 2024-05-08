{
  "0.1" = {
    sha256 = "24400a728cb2e4438336b32e5e75036d5e160033ed65fb686551b3a8a53c2f9f";
    revisions = {
      r0 = {
        nix = import ../hackage/di-wai-0.1-r0-3c5f36985a2f9993149ed864458977d83af7eb378dd9e4aa4d6209e21093a33b.nix;
        revNum = 0;
        sha256 = "3c5f36985a2f9993149ed864458977d83af7eb378dd9e4aa4d6209e21093a33b";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "390f97dc9c937e72757f5f88a4c6fddc999c5ecff9f35dfec0de2badac2edc40";
    revisions = {
      r0 = {
        nix = import ../hackage/di-wai-0.2-r0-dbb04b64450ae4100d92367ad2b5027c06f8990ba28724785cd8dc6f6e8e83fb.nix;
        revNum = 0;
        sha256 = "dbb04b64450ae4100d92367ad2b5027c06f8990ba28724785cd8dc6f6e8e83fb";
      };
      default = "r0";
    };
  };
}