{
  "1.0.0" = {
    sha256 = "95fa327142e08d3894ddbabc2466d17fe26d9228140df6435607f0d6214f9c2e";
    revisions = {
      r0 = {
        nix = import ../hackage/claude-1.0.0-r0-b6fc43097df95b1ecd2b653fa0dc6b10adaf841fb85ce81448b43bec9904afa3.nix;
        revNum = 0;
        sha256 = "b6fc43097df95b1ecd2b653fa0dc6b10adaf841fb85ce81448b43bec9904afa3";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "9818da52dd086923dc2609e4e49048a2017b267b87062b1c4fb5685eac514fcb";
    revisions = {
      r0 = {
        nix = import ../hackage/claude-1.0.1-r0-42d36cb913b12fa9faf78a3c07e20a35209b3bd8ab8357ce0144aac7484d9098.nix;
        revNum = 0;
        sha256 = "42d36cb913b12fa9faf78a3c07e20a35209b3bd8ab8357ce0144aac7484d9098";
      };
      default = "r0";
    };
  };
}