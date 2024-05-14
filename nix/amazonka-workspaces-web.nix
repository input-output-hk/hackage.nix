{
  "2.0" = {
    sha256 = "e906d19a77526804b23710f546916c84cae8bc629a9d0f9b8326e17aa2d0e29f";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-workspaces-web-2.0-r0-c8892692c2e89b7032e7822f5f57448b9f7b1ff643e172b4378e1e0112d68d8f.nix;
        revNum = 0;
        sha256 = "c8892692c2e89b7032e7822f5f57448b9f7b1ff643e172b4378e1e0112d68d8f";
      };
      r1 = {
        nix = import ../hackage/amazonka-workspaces-web-2.0-r1-6d411dcf0a0a5c761f9c2cd3a05eadf13883e79b53b84a63b05be50e9582b52c.nix;
        revNum = 1;
        sha256 = "6d411dcf0a0a5c761f9c2cd3a05eadf13883e79b53b84a63b05be50e9582b52c";
      };
      default = "r1";
    };
  };
}