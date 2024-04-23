{
  "0.1.0.0" = {
    sha256 = "bf8010479ba75032c6750444edc7979a65c6ce4c919a629562ddd81aa03aac4d";
    revisions = {
      r0 = {
        nix = import ../hackage/hackage-diff-0.1.0.0-r0-a2b849183e3e2e92c6bb51540f51bd965072ef5229b9ca0f3860dc543a0f8765.nix;
        revNum = 0;
        sha256 = "a2b849183e3e2e92c6bb51540f51bd965072ef5229b9ca0f3860dc543a0f8765";
      };
      r1 = {
        nix = import ../hackage/hackage-diff-0.1.0.0-r1-eddc65fed41375eaa4ce2aa729bd35364d558d7e33b23fcafca58dd6ce3cff1c.nix;
        revNum = 1;
        sha256 = "eddc65fed41375eaa4ce2aa729bd35364d558d7e33b23fcafca58dd6ce3cff1c";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "251410eafa7672c817ef5b697798770b37795e9699e42059aeba9e4b82b4d002";
    revisions = {
      r0 = {
        nix = import ../hackage/hackage-diff-0.1.0.1-r0-62ff65fc78617a5191d28977490d13709d16d793067e2b682e0f9fe73cc3f6dd.nix;
        revNum = 0;
        sha256 = "62ff65fc78617a5191d28977490d13709d16d793067e2b682e0f9fe73cc3f6dd";
      };
      r1 = {
        nix = import ../hackage/hackage-diff-0.1.0.1-r1-7623748c58e5154c66e7727af0bf610ee21e9c276dd583c8d09807706a03d10a.nix;
        revNum = 1;
        sha256 = "7623748c58e5154c66e7727af0bf610ee21e9c276dd583c8d09807706a03d10a";
      };
      default = "r1";
    };
  };
}