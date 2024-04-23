{
  "0.1.0.0" = {
    sha256 = "c37f14e3483691e63a2e772b7ee93bb287e0912079667f9f6c69d4ebd521c88e";
    revisions = {
      r0 = {
        nix = import ../hackage/assoc-list-0.1.0.0-r0-3d4b76bf5035facfa49efd2b2ea09e0d024857218135359b20281ac18945763e.nix;
        revNum = 0;
        sha256 = "3d4b76bf5035facfa49efd2b2ea09e0d024857218135359b20281ac18945763e";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "49d3a32e4a8a2557bda505745c22745185f6c106bd0d008b0996255585e6fbbd";
    revisions = {
      r0 = {
        nix = import ../hackage/assoc-list-0.1.0.1-r0-12785f5117ef2392b6a04a4725f89363f1aafa13f398da3adadfde46b770ea6a.nix;
        revNum = 0;
        sha256 = "12785f5117ef2392b6a04a4725f89363f1aafa13f398da3adadfde46b770ea6a";
      };
      r1 = {
        nix = import ../hackage/assoc-list-0.1.0.1-r1-9300f7fcff2b535958a0458fe5482ceaefc896d09e0c3332f9ec700d28b497ba.nix;
        revNum = 1;
        sha256 = "9300f7fcff2b535958a0458fe5482ceaefc896d09e0c3332f9ec700d28b497ba";
      };
      default = "r1";
    };
  };
}