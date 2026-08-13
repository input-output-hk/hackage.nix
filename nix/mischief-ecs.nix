{
  "0.1.0.0" = {
    sha256 = "73e5ebcc17e3f75f79748e6e23205340f2d38d2be4d6f782a07a0ddce9e0166b";
    revisions = {
      r0 = {
        nix = import ../hackage/mischief-ecs-0.1.0.0-r0-ff88775b58aeb96d6a493271a8c0cbeb022d191098253ed0343d96385d6c340c.nix;
        revNum = 0;
        sha256 = "ff88775b58aeb96d6a493271a8c0cbeb022d191098253ed0343d96385d6c340c";
      };
      r1 = {
        nix = import ../hackage/mischief-ecs-0.1.0.0-r1-ab2e8025864f218c08496ceb47c3730ce63d805de6db19d0b39c2887cebdc24d.nix;
        revNum = 1;
        sha256 = "ab2e8025864f218c08496ceb47c3730ce63d805de6db19d0b39c2887cebdc24d";
      };
      r2 = {
        nix = import ../hackage/mischief-ecs-0.1.0.0-r2-7ab656fd77fbd48dc6c2014ca7fc0d465b6480ab39c7af6069742cd6fe9471ed.nix;
        revNum = 2;
        sha256 = "7ab656fd77fbd48dc6c2014ca7fc0d465b6480ab39c7af6069742cd6fe9471ed";
      };
      default = "r2";
    };
  };
}