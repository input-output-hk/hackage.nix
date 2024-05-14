{
  "2.0" = {
    sha256 = "4162a17fc1e9f9256979334406cd740baee68ebdb37979dc90f25f705f2e760f";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-network-firewall-2.0-r0-a063bde5a3f00d6e5f04029c18f12d34621c8e6e15bd8fe3cd8f3f80286ece45.nix;
        revNum = 0;
        sha256 = "a063bde5a3f00d6e5f04029c18f12d34621c8e6e15bd8fe3cd8f3f80286ece45";
      };
      r1 = {
        nix = import ../hackage/amazonka-network-firewall-2.0-r1-b9235ff90507b8589dfb7f9097396c0294172d310d17b2572d2561b1a3e1ce9c.nix;
        revNum = 1;
        sha256 = "b9235ff90507b8589dfb7f9097396c0294172d310d17b2572d2561b1a3e1ce9c";
      };
      default = "r1";
    };
  };
}