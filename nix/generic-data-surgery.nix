{
  "0.1.0.0" = {
    sha256 = "4419539888ee604b7487573bf1b8394168758f7d637ca89a8a482ff3263fbea9";
    revisions = {
      r0 = {
        nix = import ../hackage/generic-data-surgery-0.1.0.0-r0-cb42f0e4c3474172232b8a13056282d9a172c3800952a8b42cb360fe68f74daa.nix;
        revNum = 0;
        sha256 = "cb42f0e4c3474172232b8a13056282d9a172c3800952a8b42cb360fe68f74daa";
      };
      r1 = {
        nix = import ../hackage/generic-data-surgery-0.1.0.0-r1-36d10a25a42386ee1a9a59916391e47cc8b3f91815180e3835b980909d5aaa80.nix;
        revNum = 1;
        sha256 = "36d10a25a42386ee1a9a59916391e47cc8b3f91815180e3835b980909d5aaa80";
      };
      default = "r1";
    };
  };
  "0.2.0.0" = {
    sha256 = "1a97b635e7d8dee9be41cd6ceac691583f63dfbb4127236a8aa7165661ebf60a";
    revisions = {
      r0 = {
        nix = import ../hackage/generic-data-surgery-0.2.0.0-r0-30ef73df8b1a6259139290e4333910bc378d397c886566369b1037d94d61cab6.nix;
        revNum = 0;
        sha256 = "30ef73df8b1a6259139290e4333910bc378d397c886566369b1037d94d61cab6";
      };
      default = "r0";
    };
  };
  "0.2.1.0" = {
    sha256 = "c7ff4d3fc1ff77d1e0a2e26a0c4032b6fc01f3ffbb5c2e78719b0747a2475d56";
    revisions = {
      r0 = {
        nix = import ../hackage/generic-data-surgery-0.2.1.0-r0-12dd6af95b8d5aac32bd86c51c0e934072476ab3d45305c859b258dd815c6330.nix;
        revNum = 0;
        sha256 = "12dd6af95b8d5aac32bd86c51c0e934072476ab3d45305c859b258dd815c6330";
      };
      default = "r0";
    };
  };
  "0.3.0.0" = {
    sha256 = "3a26382cf585ce2a24c7fdccfdcd9282bcf8b0b2f4eac983d04b8107c2abe9b5";
    revisions = {
      r0 = {
        nix = import ../hackage/generic-data-surgery-0.3.0.0-r0-b0bc01418e70fc89f891322b0598553c3ecebf76d281a17a879146d0ff376d10.nix;
        revNum = 0;
        sha256 = "b0bc01418e70fc89f891322b0598553c3ecebf76d281a17a879146d0ff376d10";
      };
      default = "r0";
    };
  };
}