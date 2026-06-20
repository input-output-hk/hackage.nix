{
  "0.0.1.0" = {
    sha256 = "6c5c2fbc29bd99c3656f36ee80787b8592af29f3aeab02e4f45618b2dcd1849f";
    revisions = {
      r0 = {
        nix = import ../hackage/ai-agent-diff-patch-0.0.1.0-r0-f74de5ae115cf6aae8ec1d1afff7f3a314d04f573a16dace20066a19f4c4ecda.nix;
        revNum = 0;
        sha256 = "f74de5ae115cf6aae8ec1d1afff7f3a314d04f573a16dace20066a19f4c4ecda";
      };
      default = "r0";
    };
  };
  "0.0.2.0" = {
    sha256 = "fa26b5eaf57ce18a4d34e202370cab59fbb93d7d9ce2a0e4c6d458616d13ada3";
    revisions = {
      r0 = {
        nix = import ../hackage/ai-agent-diff-patch-0.0.2.0-r0-72eb7675f22fa0e74179367094398d38f12ef2458b20b8b11e21ca3c588b2b21.nix;
        revNum = 0;
        sha256 = "72eb7675f22fa0e74179367094398d38f12ef2458b20b8b11e21ca3c588b2b21";
      };
      default = "r0";
    };
  };
}