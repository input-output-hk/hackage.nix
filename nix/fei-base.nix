{
  "0.2.0.0" = {
    sha256 = "4fe72068c1561d9d066839c019b5f7794ed5e89c566570c665a21d1f43fe8f2e";
    revisions = {
      r0 = {
        nix = import ../hackage/fei-base-0.2.0.0-r0-fb4b9af506e945b32beb43ba3e522ed955664d7b9f600c8cbdf9c72ab873ea74.nix;
        revNum = 0;
        sha256 = "fb4b9af506e945b32beb43ba3e522ed955664d7b9f600c8cbdf9c72ab873ea74";
      };
      default = "r0";
    };
  };
  "1.0.0" = {
    sha256 = "e1740537f5b0a5a15beb53b78abd967ac0887dbd166b4af879ad69b34f10ee52";
    revisions = {
      r0 = {
        nix = import ../hackage/fei-base-1.0.0-r0-db7322b9a3c2798f1506edb33b4c838c2a45233b84b287a865d056b3cf947351.nix;
        revNum = 0;
        sha256 = "db7322b9a3c2798f1506edb33b4c838c2a45233b84b287a865d056b3cf947351";
      };
      default = "r0";
    };
  };
}