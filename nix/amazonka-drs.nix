{
  "2.0" = {
    sha256 = "511dafcc4277733688aa2bb48f91431263fbaef8c4ca6a7f5133c91cc3816e38";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-drs-2.0-r0-c61c4c051890deb44144a10a447825111f3a73fcd95881f7a3b1a0f606b6d204.nix;
        revNum = 0;
        sha256 = "c61c4c051890deb44144a10a447825111f3a73fcd95881f7a3b1a0f606b6d204";
      };
      r1 = {
        nix = import ../hackage/amazonka-drs-2.0-r1-8f46f60a8e0f19a3a5e94e84b6022bc9a406bfcd0ed71b4a9fc3b6b6a8a5cbdf.nix;
        revNum = 1;
        sha256 = "8f46f60a8e0f19a3a5e94e84b6022bc9a406bfcd0ed71b4a9fc3b6b6a8a5cbdf";
      };
      default = "r1";
    };
  };
}