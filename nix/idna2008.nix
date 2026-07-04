{
  "0.0.1.0" = {
    sha256 = "9f7e4a3605827fcb8cf28552ccb85fa8e8ea3b2dae04d66b31657a18f215a6dd";
    revisions = {
      r0 = {
        nix = import ../hackage/idna2008-0.0.1.0-r0-0e4177b0869d955d55119b947e5ec847e2bf2e3804dcd04fcb840e45237f0f97.nix;
        revNum = 0;
        sha256 = "0e4177b0869d955d55119b947e5ec847e2bf2e3804dcd04fcb840e45237f0f97";
      };
      default = "r0";
    };
  };
  "1.0.0.0" = {
    sha256 = "ca1eceefd15779cb8f2bfee70ef737eba656d67e2580f241ced2a6399eb7c564";
    revisions = {
      r0 = {
        nix = import ../hackage/idna2008-1.0.0.0-r0-60eaa6e8f9edb02a03d86246cb49c402ce1703d071dd5f7d7f564c110b4515ae.nix;
        revNum = 0;
        sha256 = "60eaa6e8f9edb02a03d86246cb49c402ce1703d071dd5f7d7f564c110b4515ae";
      };
      default = "r0";
    };
  };
  "1.0.0.1" = {
    sha256 = "d6bf359a671971ac5e039c3d620c8580d0a76f0d534e4255b4e9cc2ae79a426b";
    revisions = {
      r0 = {
        nix = import ../hackage/idna2008-1.0.0.1-r0-19ccd921ec84555ae2f434082b19de6e8e54060bd01d33c89820c9288348ef48.nix;
        revNum = 0;
        sha256 = "19ccd921ec84555ae2f434082b19de6e8e54060bd01d33c89820c9288348ef48";
      };
      r1 = {
        nix = import ../hackage/idna2008-1.0.0.1-r1-d2b4983af0f8472ddcb59e441e9799b94abb072bcacb7c82cf0681bf74fd0483.nix;
        revNum = 1;
        sha256 = "d2b4983af0f8472ddcb59e441e9799b94abb072bcacb7c82cf0681bf74fd0483";
      };
      default = "r1";
    };
  };
}