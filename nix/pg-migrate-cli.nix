{
  "1.0.0.0" = {
    sha256 = "0022a5e4c9e2e2ecf0c6eaa6f36ba8cafdb6415261c313c1439806ad4031e9d2";
    revisions = {
      r0 = {
        nix = import ../hackage/pg-migrate-cli-1.0.0.0-r0-7530950c01c2e06d50e3df528572d61b1fd83e3708a9969cfaacf0dbe0312095.nix;
        revNum = 0;
        sha256 = "7530950c01c2e06d50e3df528572d61b1fd83e3708a9969cfaacf0dbe0312095";
      };
      default = "r0";
    };
  };
  "1.1.0.0" = {
    sha256 = "a23a615c198196de76700a81fdb30acf4019dd2564fc65fd3a82109d24f3ce34";
    revisions = {
      r0 = {
        nix = import ../hackage/pg-migrate-cli-1.1.0.0-r0-deeff4d6e4da929fce4dbfc60f2878282116a00cd18e66b6493352703a8934c4.nix;
        revNum = 0;
        sha256 = "deeff4d6e4da929fce4dbfc60f2878282116a00cd18e66b6493352703a8934c4";
      };
      default = "r0";
    };
  };
}