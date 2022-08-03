{
  "0.1" = {
    sha256 = "ff040fa10ee5d23d320e520b943e363a4337b66b0d42bdd1002942bbfcbfcbee";
    revisions = {
      r0 = {
        nix = import ../hackage/check-email-0.1-r0-50a89d60373ef1145b212c8f89fe39493487956686526db43556ef329de74704.nix;
        revNum = 0;
        sha256 = "50a89d60373ef1145b212c8f89fe39493487956686526db43556ef329de74704";
        };
      default = "r0";
      };
    };
  "1.0" = {
    sha256 = "dfbba577c18ca1180d8d4b38cd0a54a6f0ca5a886e502cb83c8ab07675463cb7";
    revisions = {
      r0 = {
        nix = import ../hackage/check-email-1.0-r0-4e1c8715c826700dfe65c737816ac40086730e64a6a4336592db60f0ef75aee3.nix;
        revNum = 0;
        sha256 = "4e1c8715c826700dfe65c737816ac40086730e64a6a4336592db60f0ef75aee3";
        };
      r1 = {
        nix = import ../hackage/check-email-1.0-r1-39f8616eeee765838400cd6754f864e9e65e8a89123327161227b6a424c20d75.nix;
        revNum = 1;
        sha256 = "39f8616eeee765838400cd6754f864e9e65e8a89123327161227b6a424c20d75";
        };
      default = "r1";
      };
    };
  "1.0.2" = {
    sha256 = "1c2615fadba09a5d7aa5c68648d12218a595efb759842fb4f524cf380afa9327";
    revisions = {
      r0 = {
        nix = import ../hackage/check-email-1.0.2-r0-ca97466ec7fde38d42202916859171f19ce3d1bb0b3437135b902a2a64d01e5c.nix;
        revNum = 0;
        sha256 = "ca97466ec7fde38d42202916859171f19ce3d1bb0b3437135b902a2a64d01e5c";
        };
      default = "r0";
      };
    };
  }