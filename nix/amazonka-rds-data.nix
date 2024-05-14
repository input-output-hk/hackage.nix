{
  "2.0" = {
    sha256 = "8aae4f4b798d4b46ffe89dd462346b83086c73e21de298a4f7e231002220ffaf";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-rds-data-2.0-r0-429d36df5882a0527720163586b7732de03189c578a7128ae876fa43103c1c0a.nix;
        revNum = 0;
        sha256 = "429d36df5882a0527720163586b7732de03189c578a7128ae876fa43103c1c0a";
      };
      r1 = {
        nix = import ../hackage/amazonka-rds-data-2.0-r1-aa8c1a38952334a4526d41f228e35411dcc5b20244f00d5116334f8e9eefcdb5.nix;
        revNum = 1;
        sha256 = "aa8c1a38952334a4526d41f228e35411dcc5b20244f00d5116334f8e9eefcdb5";
      };
      default = "r1";
    };
  };
}