{
  "0.1" = {
    sha256 = "b08c0b3bee5410818f5114bd6adef8b5f2575cada8374a00481cdbd5e97c120c";
    revisions = {
      r0 = {
        nix = import ../hackage/happstack-contrib-0.1-r0-e73f603c30442c3d421d1bcc949c2c1e7e9420d069b0b48401f4f867c746747d.nix;
        revNum = 0;
        sha256 = "e73f603c30442c3d421d1bcc949c2c1e7e9420d069b0b48401f4f867c746747d";
      };
      default = "r0";
    };
  };
  "0.2.1" = {
    sha256 = "e550c0e74b1873ac051a886626f44571cf8543e179096f391f1cbecaa4750d33";
    revisions = {
      r0 = {
        nix = import ../hackage/happstack-contrib-0.2.1-r0-76bfe5f1f65902f20b6860c235371a295217f48bbb2faf778906f284ce43447b.nix;
        revNum = 0;
        sha256 = "76bfe5f1f65902f20b6860c235371a295217f48bbb2faf778906f284ce43447b";
      };
      default = "r0";
    };
  };
}