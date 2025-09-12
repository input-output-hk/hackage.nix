{
  "0.1.0.0" = {
    sha256 = "b920db90bb3f8a869bd1fe7ffd156bd7c21c6b012f5675641cc2e465b2a88391";
    revisions = {
      r0 = {
        nix = import ../hackage/google-cloud-storage-0.1.0.0-r0-265d0f350eb484b7089bfb38129895e19bf276b037604c0123faa54598e1332e.nix;
        revNum = 0;
        sha256 = "265d0f350eb484b7089bfb38129895e19bf276b037604c0123faa54598e1332e";
      };
      default = "r0";
    };
  };
  "1.1.0.0" = {
    sha256 = "31063bc5e1b9f65bf203cccb6c0299abcd0c68b474a64e3aed34dc7bcb55b1d7";
    revisions = {
      r0 = {
        nix = import ../hackage/google-cloud-storage-1.1.0.0-r0-f85b509fcc83ea00b6c794897afdeead98aafe28ddb87b82f157bff3339f69b3.nix;
        revNum = 0;
        sha256 = "f85b509fcc83ea00b6c794897afdeead98aafe28ddb87b82f157bff3339f69b3";
      };
      r1 = {
        nix = import ../hackage/google-cloud-storage-1.1.0.0-r1-d73990ee459c59f2b86b33b3b0049d4922c34a406985be9e7bcd159012f30b80.nix;
        revNum = 1;
        sha256 = "d73990ee459c59f2b86b33b3b0049d4922c34a406985be9e7bcd159012f30b80";
      };
      default = "r1";
    };
  };
}