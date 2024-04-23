{
  "0.0.1" = {
    sha256 = "1b6db785f6430a659b59e5e7a3dfdcaf175dc0ad1879331168e8174ba1b7a5fb";
    revisions = {
      r0 = {
        nix = import ../hackage/oberon0-0.0.1-r0-e05ddd578cc6bbcd877d7d403f9f749ca1600f4912af455528a685bec6fad0ce.nix;
        revNum = 0;
        sha256 = "e05ddd578cc6bbcd877d7d403f9f749ca1600f4912af455528a685bec6fad0ce";
      };
      default = "r0";
    };
  };
  "0.0.2" = {
    sha256 = "1b96e40cacb6a00856d55d7059fbefe5aa018a15bf9002189db2868cef7d1e71";
    revisions = {
      r0 = {
        nix = import ../hackage/oberon0-0.0.2-r0-5161bcc49d03a9313187c42df0dfb1232bc2f58919878e5622dd7cdbf5b5eb66.nix;
        revNum = 0;
        sha256 = "5161bcc49d03a9313187c42df0dfb1232bc2f58919878e5622dd7cdbf5b5eb66";
      };
      default = "r0";
    };
  };
}