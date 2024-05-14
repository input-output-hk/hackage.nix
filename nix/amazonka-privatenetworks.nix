{
  "2.0" = {
    sha256 = "817af36f66f295b8fd8d6638792a4fc8d14f85ff56bb4d4d78bebe8c344b1e09";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-privatenetworks-2.0-r0-e99747d642326ee3cc0790ac1e674cf65442e9dccf52f0ac9b7ffa8569fafbd2.nix;
        revNum = 0;
        sha256 = "e99747d642326ee3cc0790ac1e674cf65442e9dccf52f0ac9b7ffa8569fafbd2";
      };
      r1 = {
        nix = import ../hackage/amazonka-privatenetworks-2.0-r1-403b7d82cfd6f6bb384ad6d8c850830365ec1995846b992bddc056a89e967a4b.nix;
        revNum = 1;
        sha256 = "403b7d82cfd6f6bb384ad6d8c850830365ec1995846b992bddc056a89e967a4b";
      };
      default = "r1";
    };
  };
}