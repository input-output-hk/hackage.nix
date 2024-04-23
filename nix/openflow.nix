{
  "0.3.0" = {
    sha256 = "6269b0b64008600c53ed70c9e3ab408a2791cac3c71446b9d921d74834190f36";
    revisions = {
      r0 = {
        nix = import ../hackage/openflow-0.3.0-r0-4bc5bf852b9138026349870e5314e540dcf6c906ffac5ee796cc0a1f71ce0f20.nix;
        revNum = 0;
        sha256 = "4bc5bf852b9138026349870e5314e540dcf6c906ffac5ee796cc0a1f71ce0f20";
      };
      default = "r0";
    };
  };
  "0.3.1" = {
    sha256 = "42cc663905b745924f64a55165f3c9b6b8027a9fc2dcd91a684ecab2c769d43f";
    revisions = {
      r0 = {
        nix = import ../hackage/openflow-0.3.1-r0-a64bf2306aee99476f541f7375236169ced96a049f8e10f16a35c1f5f03dd551.nix;
        revNum = 0;
        sha256 = "a64bf2306aee99476f541f7375236169ced96a049f8e10f16a35c1f5f03dd551";
      };
      default = "r0";
    };
  };
}