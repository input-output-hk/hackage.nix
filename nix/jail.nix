{
  "0.0.1" = {
    sha256 = "899c0ae00aa98c67fc2caf29c148ca7404642085652b18cc0dcf2c060f8dfac4";
    revisions = {
      r0 = {
        nix = import ../hackage/jail-0.0.1-r0-5d3c2d83affdcaea3e5114cc9a9edc3e0f5cb855d5e5ce662997b59ebb824ba4.nix;
        revNum = 0;
        sha256 = "5d3c2d83affdcaea3e5114cc9a9edc3e0f5cb855d5e5ce662997b59ebb824ba4";
      };
      default = "r0";
    };
  };
  "0.0.1.1" = {
    sha256 = "7fef11e3918e90a797be20e4cbb9532da875c4e45363bf623885fd900b1fbf73";
    revisions = {
      r0 = {
        nix = import ../hackage/jail-0.0.1.1-r0-e16d5e1f0cc0ebc7ed72bc6e2b9ac4863424c2f3afaeb05937e9c10726985bec.nix;
        revNum = 0;
        sha256 = "e16d5e1f0cc0ebc7ed72bc6e2b9ac4863424c2f3afaeb05937e9c10726985bec";
      };
      default = "r0";
    };
  };
}