{
  "0.1.0" = {
    sha256 = "3ff75acfca08231d2ea365369a42b4b8f1abf05df64a980116eed193a778d860";
    revisions = {
      r0 = {
        nix = import ../hackage/ihp-zip-0.1.0-r0-2dd7f9beb94706bb2382fbd8e41919308453a9d3f8943abec8b066d316d503b6.nix;
        revNum = 0;
        sha256 = "2dd7f9beb94706bb2382fbd8e41919308453a9d3f8943abec8b066d316d503b6";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "2844580f45730c7b8c227e8bf445deeb5c695e9fcc38cea55c2709485c0e7dc2";
    revisions = {
      r0 = {
        nix = import ../hackage/ihp-zip-0.1.1-r0-bad5d05bfa338cbf61bdfc648c4997b0fc3df2c5b0eaf5b25c7f18d290172069.nix;
        revNum = 0;
        sha256 = "bad5d05bfa338cbf61bdfc648c4997b0fc3df2c5b0eaf5b25c7f18d290172069";
      };
      r1 = {
        nix = import ../hackage/ihp-zip-0.1.1-r1-8b52dd022caef797e49745d707a8909e91089049b4911575a54cd6b85210da1b.nix;
        revNum = 1;
        sha256 = "8b52dd022caef797e49745d707a8909e91089049b4911575a54cd6b85210da1b";
      };
      default = "r1";
    };
  };
}