{
  "1.10.0" = {
    sha256 = "ae7dc0256901f7eced6257f31ea963b369f8c8cdf83949a2c2b97f513ef8e6b5";
    revisions = {
      r0 = {
        nix = import ../hackage/tidal-core-1.10.0-r0-3d1dc6c39aa12b813797506e9f7d903719639966c1b8b6b1994e26667bb0b92f.nix;
        revNum = 0;
        sha256 = "3d1dc6c39aa12b813797506e9f7d903719639966c1b8b6b1994e26667bb0b92f";
      };
      default = "r0";
    };
  };
  "1.9.6" = {
    sha256 = "71bcdfbdf6100aa41e526b539e24a14f4432643fd42d4e390ba6efcc8a4bde52";
    revisions = {
      r0 = {
        nix = import ../hackage/tidal-core-1.9.6-r0-463fe9a3e19890b6c89d7b8f02d24ab60979ca349de92bc4bdf4eae9f3e3cf7b.nix;
        revNum = 0;
        sha256 = "463fe9a3e19890b6c89d7b8f02d24ab60979ca349de92bc4bdf4eae9f3e3cf7b";
      };
      default = "r0";
    };
  };
}