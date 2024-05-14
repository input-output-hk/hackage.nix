{
  "2.0" = {
    sha256 = "890e9d36d68644b534cd0d3c7167e01fe04dd8991887ad61f112eae79fc56542";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-kafkaconnect-2.0-r0-c6045f98126d206bfd9ec64c9c94858e46e9f345557a5ab2ae4a8fbd5dbbb7b6.nix;
        revNum = 0;
        sha256 = "c6045f98126d206bfd9ec64c9c94858e46e9f345557a5ab2ae4a8fbd5dbbb7b6";
      };
      r1 = {
        nix = import ../hackage/amazonka-kafkaconnect-2.0-r1-e2b67eca9a6ce0837496e4b37a7b3c1ac537d5ae77bc826548ab3abd5b3a757a.nix;
        revNum = 1;
        sha256 = "e2b67eca9a6ce0837496e4b37a7b3c1ac537d5ae77bc826548ab3abd5b3a757a";
      };
      default = "r1";
    };
  };
}