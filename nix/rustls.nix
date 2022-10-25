{
  "0.0.0.0" = {
    sha256 = "c61c299759de4d80bebe528ac77ebef306a857c7a90c01daaaf6a77f55edf8c8";
    revisions = {
      r0 = {
        nix = import ../hackage/rustls-0.0.0.0-r0-7f68d3a4e6bff6c7e428c4ef52c2f8e3fae6aecd529d73ba49fc1c04d2480d10.nix;
        revNum = 0;
        sha256 = "7f68d3a4e6bff6c7e428c4ef52c2f8e3fae6aecd529d73ba49fc1c04d2480d10";
        };
      r1 = {
        nix = import ../hackage/rustls-0.0.0.0-r1-82597b89ad79241d858965c6fc179504e38b07728800e34595b847bf340050a2.nix;
        revNum = 1;
        sha256 = "82597b89ad79241d858965c6fc179504e38b07728800e34595b847bf340050a2";
        };
      default = "r1";
      };
    };
  }