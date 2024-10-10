{
  "0.0.1.0" = {
    sha256 = "61461b20b8b37403aae2ec30f379844a7cf5ba934c151a70932332795aeba855";
    revisions = {
      r0 = {
        nix = import ../hackage/sel-0.0.1.0-r0-3fa0188a2cdfceb35ec4f5f01199adc9f0eb20144aac4ea1d8462bab4e20d9aa.nix;
        revNum = 0;
        sha256 = "3fa0188a2cdfceb35ec4f5f01199adc9f0eb20144aac4ea1d8462bab4e20d9aa";
      };
      default = "r0";
    };
  };
  "0.0.2.0" = {
    sha256 = "a4dfe523d2722eceaf9995c0b8a53a9a49b4b98a295c01df21d83fc9e6da2d3e";
    revisions = {
      r0 = {
        nix = import ../hackage/sel-0.0.2.0-r0-c6ce915b7953ba663a262ed0ffec9d159fe42a240f1f788d81102594fe4319cf.nix;
        revNum = 0;
        sha256 = "c6ce915b7953ba663a262ed0ffec9d159fe42a240f1f788d81102594fe4319cf";
      };
      default = "r0";
    };
  };
}