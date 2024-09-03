{
  "0.0.0.1" = {
    sha256 = "4b549e7bbe7abc957481f941371379705892f927710f367d69943a3b49193290";
    revisions = {
      r0 = {
        nix = import ../hackage/rds-data-0.0.0.1-r0-eca66a363e0d15ff51f47fb6811f3eaacb11ba036eae1d2b45340e5fc21614ad.nix;
        revNum = 0;
        sha256 = "eca66a363e0d15ff51f47fb6811f3eaacb11ba036eae1d2b45340e5fc21614ad";
      };
      default = "r0";
    };
  };
  "0.0.0.2" = {
    sha256 = "5dd080337f83ab476751bb49a229df28ed59231283651f33afccba439debd8bd";
    revisions = {
      r0 = {
        nix = import ../hackage/rds-data-0.0.0.2-r0-f9285ea9ea16761f5e550c631c5d20d0e2812f20aa3abbf54a84ce2841735e2c.nix;
        revNum = 0;
        sha256 = "f9285ea9ea16761f5e550c631c5d20d0e2812f20aa3abbf54a84ce2841735e2c";
      };
      default = "r0";
    };
  };
}