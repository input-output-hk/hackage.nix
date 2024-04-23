{
  "0.1.0" = {
    sha256 = "f52e5c4bb7dcf267edcc4125fe2cbdb149c19f4e9deba71bf62ed53fb767340f";
    revisions = {
      r0 = {
        nix = import ../hackage/dialogue-0.1.0-r0-2f755b2a9fa38e21937332f6b1789ff26262081e322f912ae2ae80bb3043e194.nix;
        revNum = 0;
        sha256 = "2f755b2a9fa38e21937332f6b1789ff26262081e322f912ae2ae80bb3043e194";
      };
      r1 = {
        nix = import ../hackage/dialogue-0.1.0-r1-a6c1056b02a836436a3bab7b77ca2328358131e443ef4e3dd2d2b68eec4982bc.nix;
        revNum = 1;
        sha256 = "a6c1056b02a836436a3bab7b77ca2328358131e443ef4e3dd2d2b68eec4982bc";
      };
      default = "r1";
    };
  };
}