{
  "0.1" = {
    sha256 = "f324088d07a0986b982a73d931b98f8276eda379e2715f48233c9a262a7393f0";
    revisions = {
      r0 = {
        nix = import ../hackage/webcrank-dispatch-0.1-r0-90824819bd919ab067727a3f3d337b30b6fd9920e9d4d5d4713a45c570f005e5.nix;
        revNum = 0;
        sha256 = "90824819bd919ab067727a3f3d337b30b6fd9920e9d4d5d4713a45c570f005e5";
      };
      r1 = {
        nix = import ../hackage/webcrank-dispatch-0.1-r1-50b6b56e1fccc20a2986ea93b04410b8131ea5f2f4df94df538c6b2369400fa8.nix;
        revNum = 1;
        sha256 = "50b6b56e1fccc20a2986ea93b04410b8131ea5f2f4df94df538c6b2369400fa8";
      };
      default = "r1";
    };
  };
  "0.2" = {
    sha256 = "13328e0f7570a29b9938b8effecc6eeadd3d14555cbefc6e3707c98d7695b7ae";
    revisions = {
      r0 = {
        nix = import ../hackage/webcrank-dispatch-0.2-r0-7d22a96c35f4dfce9c11b086583e272e551b91ca5d484d26faf6e69923a3ff1e.nix;
        revNum = 0;
        sha256 = "7d22a96c35f4dfce9c11b086583e272e551b91ca5d484d26faf6e69923a3ff1e";
      };
      default = "r0";
    };
  };
}