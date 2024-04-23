{
  "0.1.0" = {
    sha256 = "dbb01ecde929f244d443712f0f617dcc512123cef15247c037bd6ce103d4a94d";
    revisions = {
      r0 = {
        nix = import ../hackage/variables-0.1.0-r0-fa3be160493f00f954c93491e43d93f63d6401082a72a45a982b62647d6554bb.nix;
        revNum = 0;
        sha256 = "fa3be160493f00f954c93491e43d93f63d6401082a72a45a982b62647d6554bb";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "3787a5c18d56a0b2f06a93bee1be5f38ba49b3252bf653b9b81087507bed593d";
    revisions = {
      r0 = {
        nix = import ../hackage/variables-0.1.1-r0-58962ac07168dba794d43326a4bc412ccb0b48befa0eaa7b90c22ca9bd21dbb8.nix;
        revNum = 0;
        sha256 = "58962ac07168dba794d43326a4bc412ccb0b48befa0eaa7b90c22ca9bd21dbb8";
      };
      default = "r0";
    };
  };
}