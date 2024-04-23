{
  "1.0.0" = {
    sha256 = "451e1194f7bf6a7dea02379679c790313cc20423271fd8e98f164c942e3d81e4";
    revisions = {
      r0 = {
        nix = import ../hackage/detour-via-sci-1.0.0-r0-e42ab41814429d464de6c8033fb4f1682564dd8f1da6380d8c315d0331c0ce16.nix;
        revNum = 0;
        sha256 = "e42ab41814429d464de6c8033fb4f1682564dd8f1da6380d8c315d0331c0ce16";
      };
      r1 = {
        nix = import ../hackage/detour-via-sci-1.0.0-r1-b247261ccc6a0865955be5bb87515597c13e1c5dd5e4a8cfe03cbd97dc46b201.nix;
        revNum = 1;
        sha256 = "b247261ccc6a0865955be5bb87515597c13e1c5dd5e4a8cfe03cbd97dc46b201";
      };
      default = "r1";
    };
  };
}