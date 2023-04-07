{
  "0.0.1" = {
    sha256 = "fd4ff50c3950079df44bcd3d5aa4cca1cd88bca6b2fa565ea7544f3554f68bdb";
    revisions = {
      r0 = {
        nix = import ../hackage/dotparse-0.0.1-r0-4328d82c4729885ba52fba33a2ec755237d1ca425a24cde15ce6e00248231586.nix;
        revNum = 0;
        sha256 = "4328d82c4729885ba52fba33a2ec755237d1ca425a24cde15ce6e00248231586";
        };
      default = "r0";
      };
    };
  "0.0.2" = {
    sha256 = "8a262909df1621716bf47726cd3779feb8c6a3f136b98959297f7a74bb8f0515";
    revisions = {
      r0 = {
        nix = import ../hackage/dotparse-0.0.2-r0-99cf94ca686a36f40412060ac4ef7af70dc169a84c6e00419e18f51238b1138e.nix;
        revNum = 0;
        sha256 = "99cf94ca686a36f40412060ac4ef7af70dc169a84c6e00419e18f51238b1138e";
        };
      r1 = {
        nix = import ../hackage/dotparse-0.0.2-r1-3293a553d2849c24c1101614e5908d76895be7bebac3e17e8853ae749c2e72df.nix;
        revNum = 1;
        sha256 = "3293a553d2849c24c1101614e5908d76895be7bebac3e17e8853ae749c2e72df";
        };
      default = "r1";
      };
    };
  }