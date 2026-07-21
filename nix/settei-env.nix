{
  "0.1.0.0" = {
    sha256 = "4e829f71be59b8420c3cb72b172dda145b57845d7736c954cbe7b9e82a630c89";
    revisions = {
      r0 = {
        nix = import ../hackage/settei-env-0.1.0.0-r0-3ea41e677b51a3c414d22c976d846932450133db9a81207da03b8e4e73af83d5.nix;
        revNum = 0;
        sha256 = "3ea41e677b51a3c414d22c976d846932450133db9a81207da03b8e4e73af83d5";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "4344c4429b91147c45b7d4771579a7d4f0d86821e45b5ffeb3eedcdbce78f479";
    revisions = {
      r0 = {
        nix = import ../hackage/settei-env-0.2.0.0-r0-dcbadbad56e3a76d99d11d527972f286d4f940e3395bab233e442ad0dc3edc8f.nix;
        revNum = 0;
        sha256 = "dcbadbad56e3a76d99d11d527972f286d4f940e3395bab233e442ad0dc3edc8f";
      };
      default = "r0";
    };
  };
}