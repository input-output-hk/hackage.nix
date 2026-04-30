{
  "0.1.0.0" = {
    sha256 = "677976e9a8cd95ba38201d175eab7d1eb35d6fd639628dd23244a87f76efd367";
    revisions = {
      r0 = {
        nix = import ../hackage/acolyte-test-0.1.0.0-r0-2fe3ba849e9514543972983b74b2115351c86aa2337dc9566cd8addd86c240e0.nix;
        revNum = 0;
        sha256 = "2fe3ba849e9514543972983b74b2115351c86aa2337dc9566cd8addd86c240e0";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "b0d0f4e5b42c2ef216c69ed15570dad5df80dc97c819710ff0f519c7b0c30fc5";
    revisions = {
      r0 = {
        nix = import ../hackage/acolyte-test-0.1.0.1-r0-065174968230e04b2d1a322764fe4e6fe177dc2fdcc8a11814cd504e29ace1eb.nix;
        revNum = 0;
        sha256 = "065174968230e04b2d1a322764fe4e6fe177dc2fdcc8a11814cd504e29ace1eb";
      };
      default = "r0";
    };
  };
}