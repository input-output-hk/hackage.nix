{
  "0.1.0.0" = {
    sha256 = "66e4397924631f1ddd6c87baa1ae965536823a8231f3b26e5d4e30cd0484b372";
    revisions = {
      r0 = {
        nix = import ../hackage/type-flip-0.1.0.0-r0-36847659c9b40ebefc335d52c76580ed584eee2393ead6ae2a623afaa63e3927.nix;
        revNum = 0;
        sha256 = "36847659c9b40ebefc335d52c76580ed584eee2393ead6ae2a623afaa63e3927";
        };
      r1 = {
        nix = import ../hackage/type-flip-0.1.0.0-r1-f7811aba3017610117778d1407884c01d8d78c34b4e692ed5ce78bc14dc81640.nix;
        revNum = 1;
        sha256 = "f7811aba3017610117778d1407884c01d8d78c34b4e692ed5ce78bc14dc81640";
        };
      default = "r1";
      };
    };
  }