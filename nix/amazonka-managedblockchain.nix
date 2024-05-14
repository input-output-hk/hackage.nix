{
  "2.0" = {
    sha256 = "8f089f68a51b1af2895ef77248be59b1ae04a166cd87b066547fc020f73e3515";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-managedblockchain-2.0-r0-a9657ad87ae26db5507477f91409d692599409c253334a98d352d0ae68103282.nix;
        revNum = 0;
        sha256 = "a9657ad87ae26db5507477f91409d692599409c253334a98d352d0ae68103282";
      };
      r1 = {
        nix = import ../hackage/amazonka-managedblockchain-2.0-r1-f200901201a4aa6cfff7cb82a16fa75a8b8ff3dcaedf27dddd2957cbacc37848.nix;
        revNum = 1;
        sha256 = "f200901201a4aa6cfff7cb82a16fa75a8b8ff3dcaedf27dddd2957cbacc37848";
      };
      default = "r1";
    };
  };
}