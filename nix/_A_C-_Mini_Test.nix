{
  "1.1.1" = {
    sha256 = "fab219b210a6c4e0f99dc157665b4fc9316dba67ceb1ecea93f45a50702a5047";
    revisions = {
      r0 = {
        nix = import ../hackage/AC-MiniTest-1.1.1-r0-0d25c6a6fdc4815683bcb6f92e1b0c8e51f981822af52ec94958b51778e1ac77.nix;
        revNum = 0;
        sha256 = "0d25c6a6fdc4815683bcb6f92e1b0c8e51f981822af52ec94958b51778e1ac77";
      };
      r1 = {
        nix = import ../hackage/AC-MiniTest-1.1.1-r1-fe08f6cd26e81af78f161ce231e17330563e1c0bfec1d094652c2b27ed405c39.nix;
        revNum = 1;
        sha256 = "fe08f6cd26e81af78f161ce231e17330563e1c0bfec1d094652c2b27ed405c39";
      };
      default = "r1";
    };
  };
}