{
  "0.1.0.0" = {
    sha256 = "1f4034fd7758e5b865ff460164a46dbd3e077502681f163a1a7cea34701c0605";
    revisions = {
      r0 = {
        nix = import ../hackage/tinyid-0.1.0.0-r0-dc09352bbdc2ec113eef346d65656c18c8c0ff351a19e7107fc2aad1372c4b9a.nix;
        revNum = 0;
        sha256 = "dc09352bbdc2ec113eef346d65656c18c8c0ff351a19e7107fc2aad1372c4b9a";
      };
      r1 = {
        nix = import ../hackage/tinyid-0.1.0.0-r1-09ccca7c3be3f313d9fa95d2dd66c8fdac668a6cefec9dda31eac4636881a733.nix;
        revNum = 1;
        sha256 = "09ccca7c3be3f313d9fa95d2dd66c8fdac668a6cefec9dda31eac4636881a733";
      };
      r2 = {
        nix = import ../hackage/tinyid-0.1.0.0-r2-dda29c5fd082cbdaba3a4bd50f8922883d7cb62e767bab831055a63a6d632289.nix;
        revNum = 2;
        sha256 = "dda29c5fd082cbdaba3a4bd50f8922883d7cb62e767bab831055a63a6d632289";
      };
      default = "r2";
    };
  };
  "0.1.1.0" = {
    sha256 = "efd736a6089f1eeaafedd21c8d8222201d31ce5ae77c65f9e033cebf9fd874e1";
    revisions = {
      r0 = {
        nix = import ../hackage/tinyid-0.1.1.0-r0-bb29d7561a313201e914c7f959130cbace03860cd07b272114f0c569083d1c63.nix;
        revNum = 0;
        sha256 = "bb29d7561a313201e914c7f959130cbace03860cd07b272114f0c569083d1c63";
      };
      default = "r0";
    };
  };
}