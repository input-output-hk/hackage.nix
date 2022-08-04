{
  "0.1.0.0" = {
    sha256 = "8de01c55482eb957c70f753d0d8ef96d82e069f88d0f44c9350ec62b0b86ee5f";
    revisions = {
      r0 = {
        nix = import ../hackage/dicom-0.1.0.0-r0-3aee0fe0392f0b7a398263d0d8810db71fadb26f31647467e31d4f3c7633a6df.nix;
        revNum = 0;
        sha256 = "3aee0fe0392f0b7a398263d0d8810db71fadb26f31647467e31d4f3c7633a6df";
        };
      r1 = {
        nix = import ../hackage/dicom-0.1.0.0-r1-3b54dc49ddc8b85d4bb2eadab293eab8042b7e309a70afd1e216ed74173e81b7.nix;
        revNum = 1;
        sha256 = "3b54dc49ddc8b85d4bb2eadab293eab8042b7e309a70afd1e216ed74173e81b7";
        };
      default = "r1";
      };
    };
  "0.1.1.0" = {
    sha256 = "abe9f2f339239348136c412b1a6566d36b5d2310927ee18dbae8b95f52afc69a";
    revisions = {
      r0 = {
        nix = import ../hackage/dicom-0.1.1.0-r0-b9362c919d130a6122def4d66686241f266708da065abd2f1525100467cb18fe.nix;
        revNum = 0;
        sha256 = "b9362c919d130a6122def4d66686241f266708da065abd2f1525100467cb18fe";
        };
      default = "r0";
      };
    };
  "0.2.0.0" = {
    sha256 = "3772604143c86a3827e73924f5cbc404ab5506aabfa75f51396d3d54651e09fc";
    revisions = {
      r0 = {
        nix = import ../hackage/dicom-0.2.0.0-r0-750130706246e14cce27a60269bea6030a766761676afbbaeaf1b08b0120e461.nix;
        revNum = 0;
        sha256 = "750130706246e14cce27a60269bea6030a766761676afbbaeaf1b08b0120e461";
        };
      default = "r0";
      };
    };
  "0.3.0.0" = {
    sha256 = "d616ae5db9863803c7502986925598be9774842e714ed9c4dfecdc5dce9f3d20";
    revisions = {
      r0 = {
        nix = import ../hackage/dicom-0.3.0.0-r0-858bde75c066aa5a0f6afc1f452e96ec1fe2ed656b1d5d537d5e6c6005221e81.nix;
        revNum = 0;
        sha256 = "858bde75c066aa5a0f6afc1f452e96ec1fe2ed656b1d5d537d5e6c6005221e81";
        };
      default = "r0";
      };
    };
  }