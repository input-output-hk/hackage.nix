{
  "0.7" = {
    sha256 = "5332a658e932df962499dd283bf85a891ac8552aad008e16f5daaf54fa0ae773";
    revisions = {
      r0 = {
        nix = import ../hackage/crucible-0.7-r0-bfe4e2f0bbe32f76fdefba29cd6aaaaa892e8b2c2975f6eed63bb52d1db763ef.nix;
        revNum = 0;
        sha256 = "bfe4e2f0bbe32f76fdefba29cd6aaaaa892e8b2c2975f6eed63bb52d1db763ef";
      };
      default = "r0";
    };
  };
  "0.7.1" = {
    sha256 = "fb1377c4ad1d50c881f591c5f06b8f6494da9ab2dcb8322c7cfd5984ea442ab1";
    revisions = {
      r0 = {
        nix = import ../hackage/crucible-0.7.1-r0-4bf700e44cb6ae7fd2f4fa9010cc1098b839d03b728c5b96a4bc50e30ba580ee.nix;
        revNum = 0;
        sha256 = "4bf700e44cb6ae7fd2f4fa9010cc1098b839d03b728c5b96a4bc50e30ba580ee";
      };
      r1 = {
        nix = import ../hackage/crucible-0.7.1-r1-11d444b35af80679045c81a7ea144e2d4b3bf06d4e6993d2bba48b8741ab3dfe.nix;
        revNum = 1;
        sha256 = "11d444b35af80679045c81a7ea144e2d4b3bf06d4e6993d2bba48b8741ab3dfe";
      };
      default = "r1";
    };
  };
  "0.7.2" = {
    sha256 = "63813a432478fe45db4a0d9adec858eeaf20987e21fe8ccc6b5abe86977ee973";
    revisions = {
      r0 = {
        nix = import ../hackage/crucible-0.7.2-r0-f49ff69c66c2f180b2f61a8b14badb45d1004ca70208102a139da3f6033b087e.nix;
        revNum = 0;
        sha256 = "f49ff69c66c2f180b2f61a8b14badb45d1004ca70208102a139da3f6033b087e";
      };
      default = "r0";
    };
  };
}