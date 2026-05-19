{
  "0.1.0" = {
    sha256 = "7f74ca354a83d799dce16911f09898b068bdfaafd6a089e5dd5fc385292dad2a";
    revisions = {
      r0 = {
        nix = import ../hackage/mcp-hoogle-0.1.0-r0-ddd9b413e74e66633af356033b932254a9c7b830575f19b356dfdd4f98056d20.nix;
        revNum = 0;
        sha256 = "ddd9b413e74e66633af356033b932254a9c7b830575f19b356dfdd4f98056d20";
      };
      default = "r0";
    };
  };
  "0.2.0" = {
    sha256 = "9f4ec19bebaa5eac711b24aa1ef692303164a2f5f14f40b79fce449bdcba5aea";
    revisions = {
      r0 = {
        nix = import ../hackage/mcp-hoogle-0.2.0-r0-b4ca159edc679ec1e7fb46c194210dbdff8590eb36effe8131128f844e658221.nix;
        revNum = 0;
        sha256 = "b4ca159edc679ec1e7fb46c194210dbdff8590eb36effe8131128f844e658221";
      };
      default = "r0";
    };
  };
}