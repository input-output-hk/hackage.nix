{
  "0.1.0.0" = {
    sha256 = "9b572a10cc10b74f7a435c2210ece8de4d7c0f0f6e87ca997e055310548a20f0";
    revisions = {
      r0 = {
        nix = import ../hackage/socket-activation-0.1.0.0-r0-ee082e4860f6e104297937df05e35c1d03b010dc0006d215b9c1e10ce326419a.nix;
        revNum = 0;
        sha256 = "ee082e4860f6e104297937df05e35c1d03b010dc0006d215b9c1e10ce326419a";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "aafe00774b8403edacb04b8d4dc6f38028f5173f57a5c4de43e9d26f02eb3f81";
    revisions = {
      r0 = {
        nix = import ../hackage/socket-activation-0.1.0.1-r0-e3225f7cc32fdb5760c7ec7e03a457aa0dcda042276bc29b53515f1fea900bf4.nix;
        revNum = 0;
        sha256 = "e3225f7cc32fdb5760c7ec7e03a457aa0dcda042276bc29b53515f1fea900bf4";
      };
      r1 = {
        nix = import ../hackage/socket-activation-0.1.0.1-r1-5d2bff5f9d9f54e53f5aceee7e03196e795815b76db87a9b3b03a7d7f3a37ae4.nix;
        revNum = 1;
        sha256 = "5d2bff5f9d9f54e53f5aceee7e03196e795815b76db87a9b3b03a7d7f3a37ae4";
      };
      default = "r1";
    };
  };
  "0.1.0.2" = {
    sha256 = "b99e7b4f296cd462aac84e5bb61fb02953e2080d1351e9e10a63d35dc34eb43b";
    revisions = {
      r0 = {
        nix = import ../hackage/socket-activation-0.1.0.2-r0-1df3553b6c07b8969001147411f29ee1aa5f02e520edc7327cb22630a6327126.nix;
        revNum = 0;
        sha256 = "1df3553b6c07b8969001147411f29ee1aa5f02e520edc7327cb22630a6327126";
      };
      r1 = {
        nix = import ../hackage/socket-activation-0.1.0.2-r1-b74e58506259e98214ded7b7c99a2731e8f78f399060c3e52b1b5c876644752f.nix;
        revNum = 1;
        sha256 = "b74e58506259e98214ded7b7c99a2731e8f78f399060c3e52b1b5c876644752f";
      };
      default = "r1";
    };
  };
}