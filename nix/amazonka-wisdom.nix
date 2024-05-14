{
  "2.0" = {
    sha256 = "cb14590939a068c90eb0817c72f79ec9a2d11ab2a6482a991244736295f5c231";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-wisdom-2.0-r0-e251639562895290ea7bae0c8978ed71e7935f5dd09e41fb7141260460749631.nix;
        revNum = 0;
        sha256 = "e251639562895290ea7bae0c8978ed71e7935f5dd09e41fb7141260460749631";
      };
      r1 = {
        nix = import ../hackage/amazonka-wisdom-2.0-r1-89f58c494271b4df2e8d9b0293c3ca131d6b1cdd17be0f61dcccf0927a8231b5.nix;
        revNum = 1;
        sha256 = "89f58c494271b4df2e8d9b0293c3ca131d6b1cdd17be0f61dcccf0927a8231b5";
      };
      default = "r1";
    };
  };
}