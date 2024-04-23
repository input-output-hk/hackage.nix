{
  "0.1" = {
    sha256 = "08a6ae51705d602b8b35b140e2ba951682ff9d3f5f68588c9daac651d5551c51";
    revisions = {
      r0 = {
        nix = import ../hackage/haskoon-0.1-r0-329206f2a7d2184a83eff38b4edb674787465251ae32be072775344af102a221.nix;
        revNum = 0;
        sha256 = "329206f2a7d2184a83eff38b4edb674787465251ae32be072775344af102a221";
      };
      default = "r0";
    };
  };
  "0.3.1.1" = {
    sha256 = "34d125ead181f92c20f9c68e19ea2b6cc0df99d006c202438d38eabb6be0c5e5";
    revisions = {
      r0 = {
        nix = import ../hackage/haskoon-0.3.1.1-r0-fc1b45205dc6cf34f4bae2156d5dc3f5f0491e92805ea410c3219e524e6845ea.nix;
        revNum = 0;
        sha256 = "fc1b45205dc6cf34f4bae2156d5dc3f5f0491e92805ea410c3219e524e6845ea";
      };
      default = "r0";
    };
  };
}