{
  "0.4.0" = {
    sha256 = "32135369f5c5b6fe5ff9f1105870985640d54e3123485aa9b4a2079fc7c11111";
    revisions = {
      r0 = {
        nix = import ../hackage/json-qq-0.4.0-r0-a7da45d24101f7e12e761e3311ce878cfb01bbc3b720bfa6e22a0bac8912cc3e.nix;
        revNum = 0;
        sha256 = "a7da45d24101f7e12e761e3311ce878cfb01bbc3b720bfa6e22a0bac8912cc3e";
      };
      default = "r0";
    };
  };
  "0.4.1" = {
    sha256 = "a61e1dcd911f8f24b1ae050d7728a19170a06b426b68d6d3c053424922d8ee66";
    revisions = {
      r0 = {
        nix = import ../hackage/json-qq-0.4.1-r0-e1dde5830b77138f93c4525e8882249351be21fe2068a3be2f8e0d3c5340170f.nix;
        revNum = 0;
        sha256 = "e1dde5830b77138f93c4525e8882249351be21fe2068a3be2f8e0d3c5340170f";
      };
      r1 = {
        nix = import ../hackage/json-qq-0.4.1-r1-e070ffde0263105ed21f178ab669dcfeb9593302a2971b76d99bb0b5aac9f85b.nix;
        revNum = 1;
        sha256 = "e070ffde0263105ed21f178ab669dcfeb9593302a2971b76d99bb0b5aac9f85b";
      };
      default = "r1";
    };
  };
}