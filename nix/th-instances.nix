{
  "0.1.0.14" = {
    sha256 = "1b78f6f5444a92e875ffeb293d9aaf6b1155590d721e6dffce5efe2005abeac7";
    revisions = {
      r0 = {
        nix = import ../hackage/th-instances-0.1.0.14-r0-b64f4bc29078e64c103e04fbce23466bff24ed5df7ca74a6e08c23754cc485e1.nix;
        revNum = 0;
        sha256 = "b64f4bc29078e64c103e04fbce23466bff24ed5df7ca74a6e08c23754cc485e1";
      };
      default = "r0";
    };
  };
  "0.1.0.3" = {
    sha256 = "8eb13d442eb9323e0e65af2ba5f870f528f7615141fba9fdb32e2a61be75c1f2";
    revisions = {
      r0 = {
        nix = import ../hackage/th-instances-0.1.0.3-r0-44ef0230de45f7ceb29cebb5733bffd3a9471d07a719a6888222d999bfb396cc.nix;
        revNum = 0;
        sha256 = "44ef0230de45f7ceb29cebb5733bffd3a9471d07a719a6888222d999bfb396cc";
      };
      r1 = {
        nix = import ../hackage/th-instances-0.1.0.3-r1-4eea5a95863fe7bb0c8cdcf93d88923800beaa2f8717115964cc91323cb95a93.nix;
        revNum = 1;
        sha256 = "4eea5a95863fe7bb0c8cdcf93d88923800beaa2f8717115964cc91323cb95a93";
      };
      default = "r1";
    };
  };
}