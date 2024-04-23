{
  "1.0.0.0" = {
    sha256 = "070b62911981e9c53b77c47afb84289e2cc1ffc17fa60a4bc009c9fad7497b76";
    revisions = {
      r0 = {
        nix = import ../hackage/type-safe-avl-1.0.0.0-r0-32c76e0875cce54433c0ed47dff4afdcc492384e6f5bbb52dce49f7049f0674a.nix;
        revNum = 0;
        sha256 = "32c76e0875cce54433c0ed47dff4afdcc492384e6f5bbb52dce49f7049f0674a";
      };
      default = "r0";
    };
  };
  "1.0.0.1" = {
    sha256 = "2cc88fc0aeee160e847da72f0918613b7ec7c26e6356498a020e97094d9df868";
    revisions = {
      r0 = {
        nix = import ../hackage/type-safe-avl-1.0.0.1-r0-a07e1c99bcbf2d7828b30e20d83dedf814f80d2c7fef45f408be1b716342148e.nix;
        revNum = 0;
        sha256 = "a07e1c99bcbf2d7828b30e20d83dedf814f80d2c7fef45f408be1b716342148e";
      };
      r1 = {
        nix = import ../hackage/type-safe-avl-1.0.0.1-r1-0f6aebe94ff8fca51a44becd2fd19f585e182868476ed13ff74a1fcfceae8a75.nix;
        revNum = 1;
        sha256 = "0f6aebe94ff8fca51a44becd2fd19f585e182868476ed13ff74a1fcfceae8a75";
      };
      default = "r1";
    };
  };
}