{
  "0.1.0" = {
    sha256 = "2e01d776bce1f711d5c7821c8ca639dfb465d47d3daef806673524aef202ffab";
    revisions = {
      r0 = {
        nix = import ../hackage/rollbar-yesod-0.1.0-r0-dc81d8cf364684a31c113651d89cf836d57bb6d1b3c73953adf259a921505a14.nix;
        revNum = 0;
        sha256 = "dc81d8cf364684a31c113651d89cf836d57bb6d1b3c73953adf259a921505a14";
      };
      default = "r0";
    };
  };
  "1.0.0" = {
    sha256 = "76fd3063f544c53213c46e1d6c094a3f7f53666b915e284612c9700cf48c2ac2";
    revisions = {
      r0 = {
        nix = import ../hackage/rollbar-yesod-1.0.0-r0-90eed0129f1160f81c1b000a4dda0ad42f26adb596f6f6d3510f02d7eaade526.nix;
        revNum = 0;
        sha256 = "90eed0129f1160f81c1b000a4dda0ad42f26adb596f6f6d3510f02d7eaade526";
      };
      default = "r0";
    };
  };
}