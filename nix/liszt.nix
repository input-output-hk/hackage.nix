{
  "0.1" = {
    sha256 = "8dcbf98fe04d7c53bf763be9b4e1535ce1a24240a05823d704cd2cade8bdd839";
    revisions = {
      r0 = {
        nix = import ../hackage/liszt-0.1-r0-d46880adca6eb5fad0e4319716ae8018e7e7ff6c640eb63b732c3eceadb5f583.nix;
        revNum = 0;
        sha256 = "d46880adca6eb5fad0e4319716ae8018e7e7ff6c640eb63b732c3eceadb5f583";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "a1e4f90e9b67361d62f9a24f053d5152cd38096b7dc71275f78f7a626860c7b7";
    revisions = {
      r0 = {
        nix = import ../hackage/liszt-0.2-r0-3744ce1305301f07e18071946d0ef8da7a6330a97b3c23e9d6b1fab2019ff660.nix;
        revNum = 0;
        sha256 = "3744ce1305301f07e18071946d0ef8da7a6330a97b3c23e9d6b1fab2019ff660";
      };
      default = "r0";
    };
  };
}