{
  "0.0" = {
    sha256 = "164f16c6b65dd698d168240d5f81beb6b8daa9524fa6e9bb720136ca7cbf4ba8";
    revisions = {
      r0 = {
        nix = import ../hackage/mtree-0.0-r0-d31d72f75383e83645c479aa1381637cf127ee49de9fded7e35cf031196bce8a.nix;
        revNum = 0;
        sha256 = "d31d72f75383e83645c479aa1381637cf127ee49de9fded7e35cf031196bce8a";
      };
      default = "r0";
    };
  };
  "0.1" = {
    sha256 = "9b3ecc824097f71cf0f4baf47183706aeb4c9ba91e70441c9c17ed926b9693d0";
    revisions = {
      r0 = {
        nix = import ../hackage/mtree-0.1-r0-e773a46bf1a9299a5642bdfbc8af7bd1440292dc9e4953c9dae21af0a1da19f9.nix;
        revNum = 0;
        sha256 = "e773a46bf1a9299a5642bdfbc8af7bd1440292dc9e4953c9dae21af0a1da19f9";
      };
      default = "r0";
    };
  };
}