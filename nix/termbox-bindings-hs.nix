{
  "0.1.0" = {
    sha256 = "c4505ba7fddab91f17a39bab4ed7678cdff6b3b61e0ca208b878ea93d2a5a61e";
    revisions = {
      r0 = {
        nix = import ../hackage/termbox-bindings-hs-0.1.0-r0-580fcd8d8f0f74eafe471b29ff731b6ea3c153f43a077d004c7fddcfa30aef1f.nix;
        revNum = 0;
        sha256 = "580fcd8d8f0f74eafe471b29ff731b6ea3c153f43a077d004c7fddcfa30aef1f";
        };
      r1 = {
        nix = import ../hackage/termbox-bindings-hs-0.1.0-r1-cd6c8612f25c4f921aae2e0941781ed34f60959084dde8cc6a6683d92875c2a6.nix;
        revNum = 1;
        sha256 = "cd6c8612f25c4f921aae2e0941781ed34f60959084dde8cc6a6683d92875c2a6";
        };
      r2 = {
        nix = import ../hackage/termbox-bindings-hs-0.1.0-r2-65255cd6891f1869d389cc049e18b1526e8fcd9732317d17b3ee85fb732bff2e.nix;
        revNum = 2;
        sha256 = "65255cd6891f1869d389cc049e18b1526e8fcd9732317d17b3ee85fb732bff2e";
        };
      default = "r2";
      };
    };
  }