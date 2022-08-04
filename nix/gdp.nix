{
  "0.0.0.1" = {
    sha256 = "123fb1705d8833affd4f500ac7d60a872a67e04aaa21cb1a995e19b14b75e485";
    revisions = {
      r0 = {
        nix = import ../hackage/gdp-0.0.0.1-r0-b8b06850ec95cb70ff4f24008e2f6cfcdc87b576a9505431e7e7ebeae795ef9a.nix;
        revNum = 0;
        sha256 = "b8b06850ec95cb70ff4f24008e2f6cfcdc87b576a9505431e7e7ebeae795ef9a";
        };
      default = "r0";
      };
    };
  "0.0.0.2" = {
    sha256 = "214fff5ae2e4952cb8f15e7209be125e760b6d97fac4cd99b2e0592f790a1abf";
    revisions = {
      r0 = {
        nix = import ../hackage/gdp-0.0.0.2-r0-bf154ac08b0441dd62c60be2a6240cf679cb964c2239d1323ee03c3e698d56f8.nix;
        revNum = 0;
        sha256 = "bf154ac08b0441dd62c60be2a6240cf679cb964c2239d1323ee03c3e698d56f8";
        };
      default = "r0";
      };
    };
  "0.0.3.0" = {
    sha256 = "a0f70f3eb52d0c666ef2c6a68130d1e8db21c545fc9a7cd3a839dd538a347d5e";
    revisions = {
      r0 = {
        nix = import ../hackage/gdp-0.0.3.0-r0-8633d032fb1e308418f327c9b7ce85c612a8b73f9056ea6a00e0f89d297ece0f.nix;
        revNum = 0;
        sha256 = "8633d032fb1e308418f327c9b7ce85c612a8b73f9056ea6a00e0f89d297ece0f";
        };
      default = "r0";
      };
    };
  }