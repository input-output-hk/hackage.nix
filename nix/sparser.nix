{
  "0.6" = {
    sha256 = "42ec1ded3c0d3fcb15a1d84af2a5b6219024c2797661958debf4b1a58719904d";
    revisions = {
      r0 = {
        nix = import ../hackage/sparser-0.6-r0-700a81321d038c9e92858f18aba327e749cb7edae67239a0d96cafa52d592bb1.nix;
        revNum = 0;
        sha256 = "700a81321d038c9e92858f18aba327e749cb7edae67239a0d96cafa52d592bb1";
      };
      default = "r0";
    };
  };
  "0.6.1" = {
    sha256 = "225f2754d44cef5bc6e3102782d53025efa677d235ff5606b47cef8a359516d6";
    revisions = {
      r0 = {
        nix = import ../hackage/sparser-0.6.1-r0-6e9326cb8221d445e0af403b78ebb5b47b8a238f9dc9669c9592f077d2f1f6ef.nix;
        revNum = 0;
        sha256 = "6e9326cb8221d445e0af403b78ebb5b47b8a238f9dc9669c9592f077d2f1f6ef";
      };
      default = "r0";
    };
  };
}