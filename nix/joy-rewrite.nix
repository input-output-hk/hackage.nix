{
  "0.1.0.0" = {
    sha256 = "58fee1385da266564a8a87e28844863ce8717ced116aac00037f01dd1589dfad";
    revisions = {
      r0 = {
        nix = import ../hackage/joy-rewrite-0.1.0.0-r0-47cb4196e0b41cf7b1387cf147c35dc1144e60ea008c8f85c896b4f26926ddf7.nix;
        revNum = 0;
        sha256 = "47cb4196e0b41cf7b1387cf147c35dc1144e60ea008c8f85c896b4f26926ddf7";
      };
      default = "r0";
    };
  };
  "0.2.0" = {
    sha256 = "99c04eb88f9280e1d8f607dd5e5e135b44ebd465be89bdd89a8ed1e6a77de102";
    revisions = {
      r0 = {
        nix = import ../hackage/joy-rewrite-0.2.0-r0-0be81f12b4d1f6586e0b0cd8a7a5ca6e4eea432f9de1ea9a487960bc73cc8c65.nix;
        revNum = 0;
        sha256 = "0be81f12b4d1f6586e0b0cd8a7a5ca6e4eea432f9de1ea9a487960bc73cc8c65";
      };
      r1 = {
        nix = import ../hackage/joy-rewrite-0.2.0-r1-15811b78f0b0f73e9818a30691192ae7f8de502053448a3b2c6677efec55b725.nix;
        revNum = 1;
        sha256 = "15811b78f0b0f73e9818a30691192ae7f8de502053448a3b2c6677efec55b725";
      };
      r2 = {
        nix = import ../hackage/joy-rewrite-0.2.0-r2-ef0f14c06d396e55ae25e9e00ae1ed433f881024af91a0c6628590992b8725a0.nix;
        revNum = 2;
        sha256 = "ef0f14c06d396e55ae25e9e00ae1ed433f881024af91a0c6628590992b8725a0";
      };
      default = "r2";
    };
  };
}