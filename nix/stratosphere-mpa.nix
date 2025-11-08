{
  "1.0.0" = {
    sha256 = "396765e0a5951bfcf7902023e8899f79b536c2dcec8255d386c810fc9e50183a";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-mpa-1.0.0-r0-edcccae983714d25ef121216dcb475d81cc922fdd48ff750f802885d30aa1f07.nix;
        revNum = 0;
        sha256 = "edcccae983714d25ef121216dcb475d81cc922fdd48ff750f802885d30aa1f07";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "7036a3c209df57bb3df5ad074f2225448b907e86bb46f166c158f6109cf04903";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-mpa-1.0.1-r0-3e08f1554aa2614a9fb6f77052051ba85af8643dd318915d93f9956503121873.nix;
        revNum = 0;
        sha256 = "3e08f1554aa2614a9fb6f77052051ba85af8643dd318915d93f9956503121873";
      };
      default = "r0";
    };
  };
}