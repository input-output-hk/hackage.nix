{
  "1.0.0.0" = {
    sha256 = "34e9507ab939bba505d6da529b5895869c380816f9d75773d4abdf22f1c8f2a9";
    revisions = {
      r0 = {
        nix = import ../hackage/pear-1.0.0.0-r0-66980acd4e50e2f8d477766605d648271a9cdefd3e6bcb4ab3885e05243cde0b.nix;
        revNum = 0;
        sha256 = "66980acd4e50e2f8d477766605d648271a9cdefd3e6bcb4ab3885e05243cde0b";
      };
      default = "r0";
    };
  };
  "1.0.0.1" = {
    sha256 = "1266874ff72492c898a505065f10f87f2068f4fe9af4415cc270f8b383ac6beb";
    revisions = {
      r0 = {
        nix = import ../hackage/pear-1.0.0.1-r0-b165b88525333647d3fc2dc0bb321a3eb56abda8dc1ab81406ae7ee0f69f0ff3.nix;
        revNum = 0;
        sha256 = "b165b88525333647d3fc2dc0bb321a3eb56abda8dc1ab81406ae7ee0f69f0ff3";
      };
      default = "r0";
    };
  };
}