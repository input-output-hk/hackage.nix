{
  "2.0" = {
    sha256 = "d36085d6d7fac7d8296d9c248809e61b916231e3ced7b5f727a485bc3e5288ac";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-apigatewayv2-2.0-r0-c65a6775909d11123a592d0d8044a13eb6361b3c69c5065b9a67d3da3daf0b01.nix;
        revNum = 0;
        sha256 = "c65a6775909d11123a592d0d8044a13eb6361b3c69c5065b9a67d3da3daf0b01";
      };
      r1 = {
        nix = import ../hackage/amazonka-apigatewayv2-2.0-r1-bbfa5c19f052994cf84fc719c05beb908f7e28054b22306c21364759236f811b.nix;
        revNum = 1;
        sha256 = "bbfa5c19f052994cf84fc719c05beb908f7e28054b22306c21364759236f811b";
      };
      default = "r1";
    };
  };
}