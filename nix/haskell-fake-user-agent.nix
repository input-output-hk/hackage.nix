{
  "0.0.1" = {
    sha256 = "0aefb6f1d64ddc5f6e686bb20d84f899270beb5da7b7609d00e50768d3fa1c5a";
    revisions = {
      r0 = {
        nix = import ../hackage/haskell-fake-user-agent-0.0.1-r0-3824443775fa6de31a18363cde56ddb2e5e82fd084e0873c867cebef683f8c59.nix;
        revNum = 0;
        sha256 = "3824443775fa6de31a18363cde56ddb2e5e82fd084e0873c867cebef683f8c59";
      };
      r1 = {
        nix = import ../hackage/haskell-fake-user-agent-0.0.1-r1-5fa006e84b22c6ccd7cf36f85525c1658481a763b17c61345cfeeca03780d4a1.nix;
        revNum = 1;
        sha256 = "5fa006e84b22c6ccd7cf36f85525c1658481a763b17c61345cfeeca03780d4a1";
      };
      default = "r1";
    };
  };
  "0.0.2" = {
    sha256 = "a39b379651027d108b0e2d984f6f511b689965d457b9df3ffbc0979727ee70bb";
    revisions = {
      r0 = {
        nix = import ../hackage/haskell-fake-user-agent-0.0.2-r0-6f6161ef2a8be322ae376f5819eba7b700710c6ceaf024c703a4217926106003.nix;
        revNum = 0;
        sha256 = "6f6161ef2a8be322ae376f5819eba7b700710c6ceaf024c703a4217926106003";
      };
      r1 = {
        nix = import ../hackage/haskell-fake-user-agent-0.0.2-r1-65dd13a2e59f64c981bacaf839f8f1ee14a505f68bb1ca2173bd48c15698f80e.nix;
        revNum = 1;
        sha256 = "65dd13a2e59f64c981bacaf839f8f1ee14a505f68bb1ca2173bd48c15698f80e";
      };
      default = "r1";
    };
  };
}