{
  "0.1.0.0" = {
    sha256 = "acda146448a215bbd0c2fb194b91856a4ad0e4b415a490519cbbc919496c5468";
    revisions = {
      r0 = {
        nix = import ../hackage/libtelnet-0.1.0.0-r0-f9b136d4bc3209b173c08bb414781787fa8fc6d0abae88d8031fad238fb0554a.nix;
        revNum = 0;
        sha256 = "f9b136d4bc3209b173c08bb414781787fa8fc6d0abae88d8031fad238fb0554a";
        };
      default = "r0";
      };
    };
  "0.1.0.1" = {
    sha256 = "7a76dc004a0eedc7d15136da1db20148228d5d920fa9ed0d4c9259b9e2e5e78d";
    revisions = {
      r0 = {
        nix = import ../hackage/libtelnet-0.1.0.1-r0-d75ff0e172cb85de72958a8307f931ef6de6921e5e204a8c009335d45d1e5402.nix;
        revNum = 0;
        sha256 = "d75ff0e172cb85de72958a8307f931ef6de6921e5e204a8c009335d45d1e5402";
        };
      r1 = {
        nix = import ../hackage/libtelnet-0.1.0.1-r1-b06c32dc00caf737101e0a127c46de155077f9992b8cec312e0d564e6d3a8f8e.nix;
        revNum = 1;
        sha256 = "b06c32dc00caf737101e0a127c46de155077f9992b8cec312e0d564e6d3a8f8e";
        };
      r2 = {
        nix = import ../hackage/libtelnet-0.1.0.1-r2-88cb6a7a2cd0374f3226bd3149057f368dda9957b8c356479ed3408192c405b8.nix;
        revNum = 2;
        sha256 = "88cb6a7a2cd0374f3226bd3149057f368dda9957b8c356479ed3408192c405b8";
        };
      default = "r2";
      };
    };
  }