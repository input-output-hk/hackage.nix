{
  "0.1.0.0" = {
    sha256 = "827b0a340f914f2d627e09852fca87df3092c691179ae9db039415772aad7d35";
    revisions = {
      r0 = {
        nix = import ../hackage/c-expr-runtime-0.1.0.0-r0-48dbe82989ee01d0fb387670588a36ef64511a01d7ad5354d239752ad129b108.nix;
        revNum = 0;
        sha256 = "48dbe82989ee01d0fb387670588a36ef64511a01d7ad5354d239752ad129b108";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "831f276a37cca89171b9cebf6352f1038451bd4a68ee91f4c236b0510e2e6985";
    revisions = {
      r0 = {
        nix = import ../hackage/c-expr-runtime-0.2.0.0-r0-0b22b2f1ec0a7bf25d03cc73189ade7bdfce633798111b09865f027ecf417e98.nix;
        revNum = 0;
        sha256 = "0b22b2f1ec0a7bf25d03cc73189ade7bdfce633798111b09865f027ecf417e98";
      };
      default = "r0";
    };
  };
}