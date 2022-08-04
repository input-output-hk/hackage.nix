{
  "0.5.0.1" = {
    sha256 = "b49d8e53ad8a0fde2b8e3ba256cd420d1fc76777194cf4f38df5de3631d3bc25";
    revisions = {
      r0 = {
        nix = import ../hackage/buffer-0.5.0.1-r0-fed5196ca10db027b68d5659d28e335ec322476ef970032762235e42fbef6dd4.nix;
        revNum = 0;
        sha256 = "fed5196ca10db027b68d5659d28e335ec322476ef970032762235e42fbef6dd4";
        };
      r1 = {
        nix = import ../hackage/buffer-0.5.0.1-r1-65c38aa2c89182a286ba843e847f45863982a1e81e0b46e598d770fa208a40e8.nix;
        revNum = 1;
        sha256 = "65c38aa2c89182a286ba843e847f45863982a1e81e0b46e598d770fa208a40e8";
        };
      default = "r1";
      };
    };
  "0.5.3" = {
    sha256 = "465c03c9211491572ee41e2030c57da1bdb0a8ac429d86cdcc46e0b1b2f1c92d";
    revisions = {
      r0 = {
        nix = import ../hackage/buffer-0.5.3-r0-fb7b181eb8d563fefc401f7097c56c9d145adccfeddf385f064ce2ea31586ad1.nix;
        revNum = 0;
        sha256 = "fb7b181eb8d563fefc401f7097c56c9d145adccfeddf385f064ce2ea31586ad1";
        };
      r1 = {
        nix = import ../hackage/buffer-0.5.3-r1-00d23d71adc25271d59a0bc986a289afb5fdae3fd662a698d239623774fc63a7.nix;
        revNum = 1;
        sha256 = "00d23d71adc25271d59a0bc986a289afb5fdae3fd662a698d239623774fc63a7";
        };
      r2 = {
        nix = import ../hackage/buffer-0.5.3-r2-6733677fca826ddba35c844f8767c11ba56626e314465f5f122a15c08ed7e751.nix;
        revNum = 2;
        sha256 = "6733677fca826ddba35c844f8767c11ba56626e314465f5f122a15c08ed7e751";
        };
      default = "r2";
      };
    };
  }