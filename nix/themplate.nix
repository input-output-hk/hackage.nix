{
  "0.1" = {
    sha256 = "1b0a38da3e3d65f310ad1da4e4803eac27d7edba3d78206720e09fbcf9668de2";
    revisions = {
      r0 = {
        nix = import ../hackage/themplate-0.1-r0-7619ad6d7f0af0f3700a584cc489026f3eff4afc7878e3c32cf3253483f6c99f.nix;
        revNum = 0;
        sha256 = "7619ad6d7f0af0f3700a584cc489026f3eff4afc7878e3c32cf3253483f6c99f";
      };
      r1 = {
        nix = import ../hackage/themplate-0.1-r1-bf6629271c0f4f238e11d5c59fe69ac126d2c48c02b93cedc768458e7b020a18.nix;
        revNum = 1;
        sha256 = "bf6629271c0f4f238e11d5c59fe69ac126d2c48c02b93cedc768458e7b020a18";
      };
      default = "r1";
    };
  };
  "1.1" = {
    sha256 = "246457f35f448a8a0f9e00cf4b7a217e5f683056fabf64c4a9ca60be208f51ae";
    revisions = {
      r0 = {
        nix = import ../hackage/themplate-1.1-r0-e3043f3ca860a88f19aef23043e04b70f1791c022e0f3cbc9c31cebf7a6145f4.nix;
        revNum = 0;
        sha256 = "e3043f3ca860a88f19aef23043e04b70f1791c022e0f3cbc9c31cebf7a6145f4";
      };
      r1 = {
        nix = import ../hackage/themplate-1.1-r1-02239e2cf43fa8f2b4fc9c68ad3561aef40af2348e962cb4f2bb5d7d839ad8da.nix;
        revNum = 1;
        sha256 = "02239e2cf43fa8f2b4fc9c68ad3561aef40af2348e962cb4f2bb5d7d839ad8da";
      };
      default = "r1";
    };
  };
  "1.2" = {
    sha256 = "2352212b0d13744e926a70eb93a6ab273f01e8919102ce9a1c4989469c71cf46";
    revisions = {
      r0 = {
        nix = import ../hackage/themplate-1.2-r0-7832fd0ac46c0e96e43de877a40066925f5f94a17c8e96174ae010d427a2673e.nix;
        revNum = 0;
        sha256 = "7832fd0ac46c0e96e43de877a40066925f5f94a17c8e96174ae010d427a2673e";
      };
      r1 = {
        nix = import ../hackage/themplate-1.2-r1-9562873914a204ed7daf91844f70592385a93b6c348798dc8772b439436ca109.nix;
        revNum = 1;
        sha256 = "9562873914a204ed7daf91844f70592385a93b6c348798dc8772b439436ca109";
      };
      default = "r1";
    };
  };
}