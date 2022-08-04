{
  "0.1.0.0" = {
    sha256 = "b2837c667cf078841224912bf85552e6253d7a3cdb19513ee96394222e8d6580";
    revisions = {
      r0 = {
        nix = import ../hackage/reasonable-operational-0.1.0.0-r0-a22c5019ff5c37e52e4aa2c7b4b4967485fe870a9a859c06068daaf090486041.nix;
        revNum = 0;
        sha256 = "a22c5019ff5c37e52e4aa2c7b4b4967485fe870a9a859c06068daaf090486041";
        };
      default = "r0";
      };
    };
  "0.1.0.1" = {
    sha256 = "097a4ee78679f0ff06e1137e293ab55f1af9d64ae7c3d44e687a3d7f7f4ea4a1";
    revisions = {
      r0 = {
        nix = import ../hackage/reasonable-operational-0.1.0.1-r0-ef49eccbffae2f50e88130745d43feb7826a042c027ab4d2e72465989702818b.nix;
        revNum = 0;
        sha256 = "ef49eccbffae2f50e88130745d43feb7826a042c027ab4d2e72465989702818b";
        };
      r1 = {
        nix = import ../hackage/reasonable-operational-0.1.0.1-r1-963ed294ec0f951858022c25b9713b06e65d2a05098068a1183110e298b5c8cf.nix;
        revNum = 1;
        sha256 = "963ed294ec0f951858022c25b9713b06e65d2a05098068a1183110e298b5c8cf";
        };
      default = "r1";
      };
    };
  }