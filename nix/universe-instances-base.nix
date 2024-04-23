{
  "1.0" = {
    sha256 = "a21150ee3bb71283522a573bf092c8d96b2e28a95336a95505aa4c2a067dd212";
    revisions = {
      r0 = {
        nix = import ../hackage/universe-instances-base-1.0-r0-c92e0c18faf4fb8b25336afbc9451709c0b0dd9dd7655fddd70adf119a15ee97.nix;
        revNum = 0;
        sha256 = "c92e0c18faf4fb8b25336afbc9451709c0b0dd9dd7655fddd70adf119a15ee97";
      };
      r1 = {
        nix = import ../hackage/universe-instances-base-1.0-r1-0a7d8febd8307c71705ddadfad43d7df2facfa7009a6d33687d7f0b9757f488f.nix;
        revNum = 1;
        sha256 = "0a7d8febd8307c71705ddadfad43d7df2facfa7009a6d33687d7f0b9757f488f";
      };
      r2 = {
        nix = import ../hackage/universe-instances-base-1.0-r2-52a74cedc4b7fc892546be518454446aa2892c32a1be19f5965878e862ed3f31.nix;
        revNum = 2;
        sha256 = "52a74cedc4b7fc892546be518454446aa2892c32a1be19f5965878e862ed3f31";
      };
      default = "r2";
    };
  };
  "1.1" = {
    sha256 = "8bb1190ef89af0ba09c354b0512fefd61f44c10a805c509550a975f68febe49d";
    revisions = {
      r0 = {
        nix = import ../hackage/universe-instances-base-1.1-r0-66cb1b5e3434625ae46667b16a74d78f925dd4a6351ed69edba4d4e7a4c3f2bd.nix;
        revNum = 0;
        sha256 = "66cb1b5e3434625ae46667b16a74d78f925dd4a6351ed69edba4d4e7a4c3f2bd";
      };
      r1 = {
        nix = import ../hackage/universe-instances-base-1.1-r1-e924941246faf89cdf9ddd2ab4408d06d1309beb2dc35ed97109976da8945942.nix;
        revNum = 1;
        sha256 = "e924941246faf89cdf9ddd2ab4408d06d1309beb2dc35ed97109976da8945942";
      };
      r2 = {
        nix = import ../hackage/universe-instances-base-1.1-r2-5ceae388104638c45500b0f290ea597636617739620b1a2ee9d2555febdde50d.nix;
        revNum = 2;
        sha256 = "5ceae388104638c45500b0f290ea597636617739620b1a2ee9d2555febdde50d";
      };
      default = "r2";
    };
  };
}