{
  "2.0" = {
    sha256 = "d28612b2d4820ab43f515c43d737164d624af6b96c90fcd3b9145b25d64dbc44";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-wafv2-2.0-r0-5f24a43a0fe38d11e21d1653914368944d27f488bbfa51d9d039d9227f4f639a.nix;
        revNum = 0;
        sha256 = "5f24a43a0fe38d11e21d1653914368944d27f488bbfa51d9d039d9227f4f639a";
      };
      r1 = {
        nix = import ../hackage/amazonka-wafv2-2.0-r1-e270f04f70b97f18c17eb0e69bb526f4c317f9f1e450fede41f92f21b4a6495b.nix;
        revNum = 1;
        sha256 = "e270f04f70b97f18c17eb0e69bb526f4c317f9f1e450fede41f92f21b4a6495b";
      };
      default = "r1";
    };
  };
}