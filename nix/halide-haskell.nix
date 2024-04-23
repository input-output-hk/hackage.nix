{
  "0.0.1.0" = {
    sha256 = "26e958eeb261e20a91aec0fbad701f825ad634277eb3cf68bc7baf21dca08a3e";
    revisions = {
      r0 = {
        nix = import ../hackage/halide-haskell-0.0.1.0-r0-7745cdd8348be5aec08741a7fb34e8330e9a840370a5088e0ffaa6dbf7a9304f.nix;
        revNum = 0;
        sha256 = "7745cdd8348be5aec08741a7fb34e8330e9a840370a5088e0ffaa6dbf7a9304f";
      };
      default = "r0";
    };
  };
  "0.0.2.0" = {
    sha256 = "f575c91f79423fef2e662dbe72d47058a0c75cad8d6dbe423c74a82b3f66177e";
    revisions = {
      r0 = {
        nix = import ../hackage/halide-haskell-0.0.2.0-r0-ee60378ac35e77713bf3018837d612a4666d8b8ebcef09cff172dc30ca1ad668.nix;
        revNum = 0;
        sha256 = "ee60378ac35e77713bf3018837d612a4666d8b8ebcef09cff172dc30ca1ad668";
      };
      default = "r0";
    };
  };
}