{
  "1.0.0" = {
    sha256 = "8787abacfaf688a8a33eff02178ab81d03eee1728d645c075eb57015d9f010ea";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-oam-1.0.0-r0-ab34a3214b7b91666dd2048af17ea1d815285cc22bee6af0f320208f5aabe03a.nix;
        revNum = 0;
        sha256 = "ab34a3214b7b91666dd2048af17ea1d815285cc22bee6af0f320208f5aabe03a";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "ae36ab777c16bd172753b9d2a2e73ab39edcd32bb20d326209882df71323b376";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-oam-1.0.1-r0-2580b38081166b8367f89dbca558db239601ca6e22d85b68bbd265056e066f6b.nix;
        revNum = 0;
        sha256 = "2580b38081166b8367f89dbca558db239601ca6e22d85b68bbd265056e066f6b";
      };
      default = "r0";
    };
  };
}