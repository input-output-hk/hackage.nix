{
  "0.1.0" = {
    sha256 = "8fd6f6392855d0cc51e2bbb5bdaccc91018e851b5c3b9a897bd6671dd00abed1";
    revisions = {
      r0 = {
        nix = import ../hackage/pattern-trie-0.1.0-r0-e838ea49c2182c36222f0b0523a9e131864c09398ea922c12e59bb8055afdb33.nix;
        revNum = 0;
        sha256 = "e838ea49c2182c36222f0b0523a9e131864c09398ea922c12e59bb8055afdb33";
      };
      r1 = {
        nix = import ../hackage/pattern-trie-0.1.0-r1-2ef9ad9a630f07e8e8c9a6689e47d7600b5ca3ebc7fe060d31bb687b1f122eed.nix;
        revNum = 1;
        sha256 = "2ef9ad9a630f07e8e8c9a6689e47d7600b5ca3ebc7fe060d31bb687b1f122eed";
      };
      default = "r1";
    };
  };
  "0.1.1" = {
    sha256 = "b189437915ef6851f03caedb9a2199189a18043f629f292ce0dbd5960128dec7";
    revisions = {
      r0 = {
        nix = import ../hackage/pattern-trie-0.1.1-r0-265ecc98c4345a89f2711b9b00e4f52ed7c143ea20f10b76ca6ddc3066658143.nix;
        revNum = 0;
        sha256 = "265ecc98c4345a89f2711b9b00e4f52ed7c143ea20f10b76ca6ddc3066658143";
      };
      default = "r0";
    };
  };
}