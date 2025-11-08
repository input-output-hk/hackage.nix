{
  "1.0.0" = {
    sha256 = "52309dc3603b2e6073b06c1c3b45d5c370ed13ac6590063d1e77561b1b3533cd";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-greengrass-1.0.0-r0-a0dbae5dc678e56a3e209c650799d09e3aaaf46317cf74472059095231802b05.nix;
        revNum = 0;
        sha256 = "a0dbae5dc678e56a3e209c650799d09e3aaaf46317cf74472059095231802b05";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "0c0e1e61ea1af8aa73331a52bb2128297e32adceea4807291edb83c52638ae1a";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-greengrass-1.0.1-r0-7b4947208917079aefbb09c661f5612b3846fe19ad049b3a8fc12cef86722169.nix;
        revNum = 0;
        sha256 = "7b4947208917079aefbb09c661f5612b3846fe19ad049b3a8fc12cef86722169";
      };
      default = "r0";
    };
  };
}