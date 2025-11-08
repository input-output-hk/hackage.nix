{
  "1.0.0" = {
    sha256 = "6a60ef4b3d4a9940559f82f821cd8eb4de75e3338787ecca4e327f8bd6060e9e";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-s3-1.0.0-r0-eebf089a9aaef3d30ac21f394d79cde634d54d0ac69174fc882d774d805676dd.nix;
        revNum = 0;
        sha256 = "eebf089a9aaef3d30ac21f394d79cde634d54d0ac69174fc882d774d805676dd";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "c364be7c9eba34d2dae4bd9714fff93e7dae88109e0d0ef44d887c88a68f494d";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-s3-1.0.1-r0-26dbf290d05b2de54da6be53439e2356019148f6b198a545d0afb38ca8569b77.nix;
        revNum = 0;
        sha256 = "26dbf290d05b2de54da6be53439e2356019148f6b198a545d0afb38ca8569b77";
      };
      default = "r0";
    };
  };
}