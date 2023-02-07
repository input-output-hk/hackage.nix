{
  "0.2" = {
    sha256 = "c0d96981153843a0de24ac0e41fb6c0e4e1a85bb246fd10fe65f5c25ac8a222b";
    revisions = {
      r0 = {
        nix = import ../hackage/smtlib-backends-z3-0.2-r0-96563fe723edcf09f93dade3de0b74baa03d9501f1244b822f6ad7e42ab812c1.nix;
        revNum = 0;
        sha256 = "96563fe723edcf09f93dade3de0b74baa03d9501f1244b822f6ad7e42ab812c1";
        };
      r1 = {
        nix = import ../hackage/smtlib-backends-z3-0.2-r1-3656cb3b0a337da9458c499915cd19500abb83257b4fea31e379160148c468c8.nix;
        revNum = 1;
        sha256 = "3656cb3b0a337da9458c499915cd19500abb83257b4fea31e379160148c468c8";
        };
      default = "r1";
      };
    };
  "0.3" = {
    sha256 = "14d5a80e31b0fef7ee3512a84f86cbe16960af7d93d8a50ba64c853eab44deb6";
    revisions = {
      r0 = {
        nix = import ../hackage/smtlib-backends-z3-0.3-r0-cca514fa7349a34becb659ff747ec144b7d1902fec2826ff3a51f81388e1eafd.nix;
        revNum = 0;
        sha256 = "cca514fa7349a34becb659ff747ec144b7d1902fec2826ff3a51f81388e1eafd";
        };
      default = "r0";
      };
    };
  }