{
  "1.0" = {
    sha256 = "c69b5acaf60b610ac6bc68e45c1f96161b920547dc89821220b6836ba8dfd11e";
    revisions = {
      r0 = {
        nix = import ../hackage/leapseconds-1.0-r0-86c9041c6ed3ef5f294ece122667f7a81b3092f06d4e355c2bf8a0f1e7857af6.nix;
        revNum = 0;
        sha256 = "86c9041c6ed3ef5f294ece122667f7a81b3092f06d4e355c2bf8a0f1e7857af6";
        };
      r1 = {
        nix = import ../hackage/leapseconds-1.0-r1-4ffceb9290e689f9b707270ab393d57dacc9c69fc880252bfed608830a0b79d8.nix;
        revNum = 1;
        sha256 = "4ffceb9290e689f9b707270ab393d57dacc9c69fc880252bfed608830a0b79d8";
        };
      default = "r1";
      };
    };
  }