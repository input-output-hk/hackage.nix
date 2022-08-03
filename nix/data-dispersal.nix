{
  "1.0.0.0" = {
    sha256 = "57511d992bf76ae5e374611dd6b27f6f1a5a47da4df202b0a238ad60231797d8";
    revisions = {
      r0 = {
        nix = import ../hackage/data-dispersal-1.0.0.0-r0-fe638fa54ed52a11bab5c436b12ea43ced38f3bb3c760a8e1f73df5d491e3594.nix;
        revNum = 0;
        sha256 = "fe638fa54ed52a11bab5c436b12ea43ced38f3bb3c760a8e1f73df5d491e3594";
        };
      r1 = {
        nix = import ../hackage/data-dispersal-1.0.0.0-r1-6aca5cf38c9c4075c971ad198957fde4656faf324c256dea6586da31bf43df1d.nix;
        revNum = 1;
        sha256 = "6aca5cf38c9c4075c971ad198957fde4656faf324c256dea6586da31bf43df1d";
        };
      default = "r1";
      };
    };
  "1.0.0.1" = {
    sha256 = "96a22046cc3a3b46437abab84973b3385723f9d4fbffb5dcc710d36e138e06d8";
    revisions = {
      r0 = {
        nix = import ../hackage/data-dispersal-1.0.0.1-r0-56bf849a64897c75d2bfd5c6a0ad1f4a7c9c285226e3d9e51da32ef48012a433.nix;
        revNum = 0;
        sha256 = "56bf849a64897c75d2bfd5c6a0ad1f4a7c9c285226e3d9e51da32ef48012a433";
        };
      default = "r0";
      };
    };
  "1.0.0.2" = {
    sha256 = "86af3b6970bf6d06b8ff27246af8e87f7b3734573c2d31b5d73105a83a69dcf4";
    revisions = {
      r0 = {
        nix = import ../hackage/data-dispersal-1.0.0.2-r0-71279dfac0cb2da451b0b109fb46ba12e03cd1cafc5ff74089945777d0079a72.nix;
        revNum = 0;
        sha256 = "71279dfac0cb2da451b0b109fb46ba12e03cd1cafc5ff74089945777d0079a72";
        };
      default = "r0";
      };
    };
  }