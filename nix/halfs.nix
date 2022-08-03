{
  "0.2" = {
    sha256 = "ea2cee564cf8a85540bf21b536d32308c30e8352354fed6c1b4c7e3e0c3651f3";
    revisions = {
      r0 = {
        nix = import ../hackage/halfs-0.2-r0-1b44cd52f6f93356f4a8aca6a1da37c2202f578eed2658b1e54d959db27411ee.nix;
        revNum = 0;
        sha256 = "1b44cd52f6f93356f4a8aca6a1da37c2202f578eed2658b1e54d959db27411ee";
        };
      default = "r0";
      };
    };
  "2.0" = {
    sha256 = "6d2a2125bae7acfde46c554a0ee0d133fd685f43bb42247eafbb327037c087cc";
    revisions = {
      r0 = {
        nix = import ../hackage/halfs-2.0-r0-597d282d636daa170c2a6d1ac2f32ed7b485329d2afd9db832864706c4ca208b.nix;
        revNum = 0;
        sha256 = "597d282d636daa170c2a6d1ac2f32ed7b485329d2afd9db832864706c4ca208b";
        };
      default = "r0";
      };
    };
  }