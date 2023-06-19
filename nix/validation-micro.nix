{
  "0.1.0.0" = {
    sha256 = "602785f0345629990c09cf8d664a642d155da863243ef6e4f5917bd5513ff39f";
    revisions = {
      r0 = {
        nix = import ../hackage/validation-micro-0.1.0.0-r0-a45969d0f40eff0f796c63004e6e34d82c1e117db27d48bfb02be09721d70df5.nix;
        revNum = 0;
        sha256 = "a45969d0f40eff0f796c63004e6e34d82c1e117db27d48bfb02be09721d70df5";
        };
      r1 = {
        nix = import ../hackage/validation-micro-0.1.0.0-r1-0b269563e230976badb6874e701f031cebfcc2774373a11bd88a77126331023a.nix;
        revNum = 1;
        sha256 = "0b269563e230976badb6874e701f031cebfcc2774373a11bd88a77126331023a";
        };
      default = "r1";
      };
    };
  "1.0.0.0" = {
    sha256 = "df3ea61de1538622b152c994e05a40c67cce0a16bba62e6a45d4591f93a5a1e8";
    revisions = {
      r0 = {
        nix = import ../hackage/validation-micro-1.0.0.0-r0-4978ffafe4cb27e2e319ac7ed6fe499dedb3f5946fc67c2bb4f5f0c9a1a21fdc.nix;
        revNum = 0;
        sha256 = "4978ffafe4cb27e2e319ac7ed6fe499dedb3f5946fc67c2bb4f5f0c9a1a21fdc";
        };
      r1 = {
        nix = import ../hackage/validation-micro-1.0.0.0-r1-fc195f4ddca51bd5f0521e2fd9c3ad448a5066ec24c49a3401f7c477ca6ea807.nix;
        revNum = 1;
        sha256 = "fc195f4ddca51bd5f0521e2fd9c3ad448a5066ec24c49a3401f7c477ca6ea807";
        };
      default = "r1";
      };
    };
  }