{
  "0.1.0.0" = {
    sha256 = "b47e21951c88ec3243c6f977b2d59e2688c536e3f182e3d7e80700bb88636349";
    revisions = {
      r0 = {
        nix = import ../hackage/transactional-events-0.1.0.0-r0-325ebb09bbe3308f9546f4bac50dc267d146a1638b2279a610fbe8882a2d23b1.nix;
        revNum = 0;
        sha256 = "325ebb09bbe3308f9546f4bac50dc267d146a1638b2279a610fbe8882a2d23b1";
        };
      r1 = {
        nix = import ../hackage/transactional-events-0.1.0.0-r1-9ae1e516b5cb6219828469b330ff7017a5b943d2791f64f8bffc34ea7f964d83.nix;
        revNum = 1;
        sha256 = "9ae1e516b5cb6219828469b330ff7017a5b943d2791f64f8bffc34ea7f964d83";
        };
      default = "r1";
      };
    };
  }