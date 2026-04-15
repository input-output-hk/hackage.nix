{
  "0.1.0" = {
    sha256 = "48a7e42f65b9557b903a49ca1d9f8f1995c5d72507eec232dbe2929ca9ffc2de";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-bench-0.1.0-r0-4ec7993fe74b398e7891fc6ae430c90fe6c0f9f281ce4d3c1cac32a894883b36.nix;
        revNum = 0;
        sha256 = "4ec7993fe74b398e7891fc6ae430c90fe6c0f9f281ce4d3c1cac32a894883b36";
      };
      default = "r0";
    };
  };
  "0.2.0" = {
    sha256 = "0ddb4950d625bfdae9d48ec798cbb638991ca5799fe02d07c2933a684116b521";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-bench-0.2.0-r0-aaa797969d8012e0bd8371094f2ce00ae9cf3be0e347c58f8fd730c9264d90c1.nix;
        revNum = 0;
        sha256 = "aaa797969d8012e0bd8371094f2ce00ae9cf3be0e347c58f8fd730c9264d90c1";
      };
      default = "r0";
    };
  };
}