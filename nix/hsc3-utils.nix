{
  "0.14" = {
    sha256 = "111c007be37f6e24798c490f5d3635f450e2136c3009052ccfe439254b259cfe";
    revisions = {
      r0 = {
        nix = import ../hackage/hsc3-utils-0.14-r0-2fb2eaa0f675ea5887ba90e89228238824150e3409c2c9d81f4af48dd9129f9c.nix;
        revNum = 0;
        sha256 = "2fb2eaa0f675ea5887ba90e89228238824150e3409c2c9d81f4af48dd9129f9c";
        };
      default = "r0";
      };
    };
  "0.15" = {
    sha256 = "3d664fffb74e758265d504ca3707c542364912263ba7ce1f87f26461cd176fdf";
    revisions = {
      r0 = {
        nix = import ../hackage/hsc3-utils-0.15-r0-0e349a4bf544e2fc897b66ceccde7fa0034600e299a447150b0b6e4f201b10b8.nix;
        revNum = 0;
        sha256 = "0e349a4bf544e2fc897b66ceccde7fa0034600e299a447150b0b6e4f201b10b8";
        };
      default = "r0";
      };
    };
  }