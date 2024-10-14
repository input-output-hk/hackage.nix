{
  "0.0.0.1" = {
    sha256 = "10dd5db1a04a84d7415006eef88091272b3c3730bbb322a1fdc9de481a3ee011";
    revisions = {
      r0 = {
        nix = import ../hackage/THSH-0.0.0.1-r0-810d53a8c1ffb2074efa165372177670efd225af87eb8bcee8be9c0227504d61.nix;
        revNum = 0;
        sha256 = "810d53a8c1ffb2074efa165372177670efd225af87eb8bcee8be9c0227504d61";
      };
      default = "r0";
    };
  };
  "0.0.0.2" = {
    sha256 = "231bd19d9e59d9633bd8a9aa44826b4df869b56cab7f07644752a46c50202f7c";
    revisions = {
      r0 = {
        nix = import ../hackage/THSH-0.0.0.2-r0-668f4937af63795640d183c146a664964d6611b80782d4f9c291448806576b99.nix;
        revNum = 0;
        sha256 = "668f4937af63795640d183c146a664964d6611b80782d4f9c291448806576b99";
      };
      default = "r0";
    };
  };
}