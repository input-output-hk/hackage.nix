{
  "2.0" = {
    sha256 = "e354cb32ffcdd52ee6d4085788921de3cd9b68b40da4330788f9972728726e95";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-iot1click-projects-2.0-r0-3f42423378d7e5826b6e71d4afee51e455e1a8cb7238d7784c15d474382e9869.nix;
        revNum = 0;
        sha256 = "3f42423378d7e5826b6e71d4afee51e455e1a8cb7238d7784c15d474382e9869";
      };
      r1 = {
        nix = import ../hackage/amazonka-iot1click-projects-2.0-r1-6ab623db4107c4da3bc77875966e9ab074b2562d568aef349b29ca4e33c4b019.nix;
        revNum = 1;
        sha256 = "6ab623db4107c4da3bc77875966e9ab074b2562d568aef349b29ca4e33c4b019";
      };
      default = "r1";
    };
  };
}