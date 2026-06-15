{
  "0.1.0.0" = {
    sha256 = "25704c9a4a8780bc8f397ae736bbad72e56707a60d49ec92e9fe7d0902b4ed2f";
    revisions = {
      r0 = {
        nix = import ../hackage/hpgsql-0.1.0.0-r0-bdd544b20c846bb8eea4d44eb61fc91725a6140547da00874c23b34308374eef.nix;
        revNum = 0;
        sha256 = "bdd544b20c846bb8eea4d44eb61fc91725a6140547da00874c23b34308374eef";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "3c9a3f2ad7e53524ad6542a132db5050ffd55c5a554a3ecb519590f692cfc584";
    revisions = {
      r0 = {
        nix = import ../hackage/hpgsql-0.2.0.0-r0-4fa9ded6ab2ab5cec122b71f62e27e0bc775bb9748e89548623be6efb1337e8b.nix;
        revNum = 0;
        sha256 = "4fa9ded6ab2ab5cec122b71f62e27e0bc775bb9748e89548623be6efb1337e8b";
      };
      default = "r0";
    };
  };
}