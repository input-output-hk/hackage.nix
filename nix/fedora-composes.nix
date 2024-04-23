{
  "0.1" = {
    sha256 = "6585c2e935f24c1a8f5baf3da2904f1aa0491bc8e7aa0cab7d25d03923a1d36e";
    revisions = {
      r0 = {
        nix = import ../hackage/fedora-composes-0.1-r0-c0950d7df99972631be942b45cde6c4b84973bb1213c0a1fc5d170ea3923fcb8.nix;
        revNum = 0;
        sha256 = "c0950d7df99972631be942b45cde6c4b84973bb1213c0a1fc5d170ea3923fcb8";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "3d156a89f61dad61c1760858042fd42a914401dc6b0645366fe7b8ac5f2013e1";
    revisions = {
      r0 = {
        nix = import ../hackage/fedora-composes-0.2-r0-c7e619060aecf15c9202b7de83e420ae033235d9a2573e058e464c73a76f4db2.nix;
        revNum = 0;
        sha256 = "c7e619060aecf15c9202b7de83e420ae033235d9a2573e058e464c73a76f4db2";
      };
      default = "r0";
    };
  };
}