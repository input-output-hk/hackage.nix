{
  "2.0" = {
    sha256 = "498d86d0285386e704841e59de49e12ef066ee4badda0059d5429bf6447efb59";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-inspector2-2.0-r0-7a21e15c45ad7c6acf6f52cee299834c4bc800de9370fea5ecd12e94ed402ac1.nix;
        revNum = 0;
        sha256 = "7a21e15c45ad7c6acf6f52cee299834c4bc800de9370fea5ecd12e94ed402ac1";
      };
      r1 = {
        nix = import ../hackage/amazonka-inspector2-2.0-r1-964db2956690e9d5d1aa2e5be4fce61e9dc46de82879db4571332bbe130cbc39.nix;
        revNum = 1;
        sha256 = "964db2956690e9d5d1aa2e5be4fce61e9dc46de82879db4571332bbe130cbc39";
      };
      default = "r1";
    };
  };
}