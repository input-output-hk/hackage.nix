{
  "2.0" = {
    sha256 = "31b0c3138989383b8af76c3d6473c5aa74a8dcbd07f4101d9409ec21de8dffc8";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-detective-2.0-r0-0c08158816d2c9dedee6a713d4b678acebb730c591d5b1ea1143b2f65b9806de.nix;
        revNum = 0;
        sha256 = "0c08158816d2c9dedee6a713d4b678acebb730c591d5b1ea1143b2f65b9806de";
      };
      r1 = {
        nix = import ../hackage/amazonka-detective-2.0-r1-a3f156c33d8502482d815b6910eaac7a44e7864ec2fcb8e91225b1fa53753f63.nix;
        revNum = 1;
        sha256 = "a3f156c33d8502482d815b6910eaac7a44e7864ec2fcb8e91225b1fa53753f63";
      };
      default = "r1";
    };
  };
}